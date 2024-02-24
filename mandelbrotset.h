#ifndef __MANDELBROTSET_H__
#define __MANDELBROTSET_H__

#include"defs.h"
#include<math.h>

double get_bs_iter(float c1, float c2)
{
    double x = 0, y = 0;
    int MAX_ITER = 255;
    int n = 0;
    while((x*x + y*y <= 4) && (n < MAX_ITER))
    {
        double temp = x;
        x = x*x - y*y + c1;
        y = 2*fabs(temp * y) + c2;
        n++;
    }
    if (n == MAX_ITER) return MAX_ITER;
    return n;
}



// void hsv_to_rgb(int hue, COLORINDEX* p)
// {
//     int r, g, b;
// }
void getColor(int numIterations, int color[4]) 
{
    color[0] = 255;                    // red
    color[1] = numIterations * 7;     // green
    color[2] = 0;                      // blue
    color[3] = numIterations * 15;     // alpha
}



void UpdateImageData(ImageState* state)
{
    state -> bmFileData.bmHeader.colorIdx[1].r = 106;
    state -> bmFileData.bmHeader.colorIdx[1].g = 4;
    state -> bmFileData.bmHeader.colorIdx[1].b = 15;

    state -> bmFileData.bmHeader.colorIdx[2].r = 157;
    state -> bmFileData.bmHeader.colorIdx[2].g = 2;
    state -> bmFileData.bmHeader.colorIdx[2].b = 8;


    state -> bmFileData.bmHeader.colorIdx[3].r = 208;
    state -> bmFileData.bmHeader.colorIdx[3].g = 0;
    state -> bmFileData.bmHeader.colorIdx[3].b = 0;

    state -> bmFileData.bmHeader.colorIdx[4].r = 220;
    state -> bmFileData.bmHeader.colorIdx[4].g = 47;
    state -> bmFileData.bmHeader.colorIdx[4].b = 2;

    state -> bmFileData.bmHeader.colorIdx[5].r = 232;
    state -> bmFileData.bmHeader.colorIdx[5].g = 93;
    state -> bmFileData.bmHeader.colorIdx[5].b = 4;

    state -> bmFileData.bmHeader.colorIdx[6].r = 244;
    state -> bmFileData.bmHeader.colorIdx[6].g = 140;
    state -> bmFileData.bmHeader.colorIdx[6].b = 6;

    state -> bmFileData.bmHeader.colorIdx[7].r = 245;
    state -> bmFileData.bmHeader.colorIdx[7].g = 149;
    state -> bmFileData.bmHeader.colorIdx[7].b = 0;

    state -> bmFileData.bmHeader.colorIdx[8].r = 255;
    state -> bmFileData.bmHeader.colorIdx[8].g = 162;
    state -> bmFileData.bmHeader.colorIdx[8].b = 0;

    state -> bmFileData.bmHeader.colorIdx[9].r = 255;
    state -> bmFileData.bmHeader.colorIdx[9].g = 170;
    state -> bmFileData.bmHeader.colorIdx[9].b = 0;

    state -> bmFileData.bmHeader.colorIdx[10].r = 255;
    state -> bmFileData.bmHeader.colorIdx[10].g = 183;
    state -> bmFileData.bmHeader.colorIdx[10].b = 0;

    state -> bmFileData.bmHeader.colorIdx[10].r = 255;
    state -> bmFileData.bmHeader.colorIdx[10].g = 195;
    state -> bmFileData.bmHeader.colorIdx[10].b = 6;

    state -> bmFileData.bmHeader.colorIdx[12].r = 255;
    state -> bmFileData.bmHeader.colorIdx[12].g = 208;
    state -> bmFileData.bmHeader.colorIdx[12].b = 0;

    state -> bmFileData.bmHeader.colorIdx[13].r = 255;
    state -> bmFileData.bmHeader.colorIdx[13].g = 221;
    state -> bmFileData.bmHeader.colorIdx[13].b = 0;

    state -> bmFileData.bmHeader.colorIdx[14].r = 255;
    state -> bmFileData.bmHeader.colorIdx[14].g = 208;
    state -> bmFileData.bmHeader.colorIdx[14].b = 0;

    state -> bmFileData.bmHeader.colorIdx[15].r = 255;
    state -> bmFileData.bmHeader.colorIdx[15].g = 221;
    state -> bmFileData.bmHeader.colorIdx[15].b = 0;

    state -> bmFileData.bmHeader.colorIdx[16].r = 255;
    state -> bmFileData.bmHeader.colorIdx[16].g = 234;
    state -> bmFileData.bmHeader.colorIdx[16].b = 0;

    state -> bmFileData.bmHeader.colorIdx[17].r = 0;
    state -> bmFileData.bmHeader.colorIdx[17].g = 0;
    state -> bmFileData.bmHeader.colorIdx[17].b = 0;


    double pi = 3.14/180;
    long long int histogram[256];
    for(int x = 0; x < state->width; x++)
    {
        for(int y = 0; y < state->height; y++)
        {
            long double nx = state->minx + (x / (double)state->width) * (state->maxx - state->minx);
            long double ny = state->maxy - (y / (double)state->height) * (state->maxy - state->miny);
            long double rx = state->cx + (nx - state->cx) * cos(state->angle*pi) - (ny - state->cy) * sin(state->angle*pi);
            long double ry = state->cy + (nx - state->cx) * sin(state->angle * pi) + (ny - state->cy) * cos(state->angle*pi);
            double iter = get_bs_iter(rx, ry);
            state->bmFileData.bmData[y * state->width + x] = (int) iter;
            if(iter == 256)
                state->bmFileData.bmData[y * state->width + x] = 17;
            else
            {
                int u = (int)iter % 16;
                for(int i = 0; i <= 16;i++)
                    if(u == i) state->bmFileData.bmData[y * state->width + x] = i;
            }
        }
    }
    
}


void ChangeCenter(ImageState* state, double newcx, double newcy, int steps)
{
    double cx_step = (newcx - state->minx) / steps;
    double cy_step = (newcy - state->miny) / steps;

    for(int i=0;i<steps; i++)
    {
        state->cx += cx_step;
        state->cy += cy_step;
        state->minx += cx_step;
        state->maxx += cx_step;
        state->miny += cy_step;
        state->maxy += cy_step;
        UpdateImageData(state);
        WriteBitmapFile(state->image_count++, & state->bmFileData);
    }
}


void ChangeZoom(ImageState* state, double zoom, int steps)
{
    double xspan = state->maxx - state->minx;
    double yspan = state->maxy - state->miny;

    double changex = state->maxx - state->cx - (xspan/zoom)/2;
    double changey = state->maxy - state->cy - (yspan/zoom)/2;

    double zoom_stepsx = changex / steps;
    double zoom_stepsy = changey / steps;

    for (int i = 0; i < steps; i++)
    {
        state->minx += zoom_stepsx;
        state->maxx -= zoom_stepsx;
        state->miny += zoom_stepsy;
        state->maxy -= zoom_stepsy;
        UpdateImageData(state);
        WriteBitmapFile(state->image_count++, &state->bmFileData);
    }
}


void ChangeRotation(ImageState* state, double angle, int steps)
{
    double angle_step = angle / steps;
    for(int i=0; i<steps; i++)
    {
        state->angle += angle_step;
        UpdateImageData(state);
        WriteBitmapFile(state->image_count++, & state->bmFileData);
    }
}

void Hold(ImageState* state, int steps)
{
    // TODO
    for(int i=0; i<steps; i++)
    {
        //TODO
        WriteBitmapFile(state->image_count++, & state->bmFileData);
    }
}
void MoveAndZoom(ImageState* state, double newcx, double newcy, double zoom, int steps)
{
    double cx_step = (newcx - state->cx) / steps;
    double cy_step = (newcy - state->cy) / steps;
    double xspan = state->maxx - state->minx;
    double yspan = state->maxy - state->miny;
    double changex = state->maxx - state->cx - (xspan / zoom) / 2;
    double changey = state->maxy - state->cy - (yspan / zoom) / 2;
    double zoom_stepsx = changex / steps;
    double zoom_stepsy = changey / steps;
    for(int i = 0; i < steps; i++)
    {
        state->cx += cx_step;
        state->cy += cy_step;
        state->minx += cx_step;
        state->maxx += cx_step;
        state->miny += cy_step;
        state->maxy += cy_step;
        state->minx += zoom_stepsx;
        state->maxx -= zoom_stepsx;
        state->miny += zoom_stepsy;
        state->maxy -= zoom_stepsy;
        UpdateImageData(state);
        WriteBitmapFile(state->image_count++, & state->bmFileData);
    }
}

#endif