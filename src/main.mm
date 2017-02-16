#include "ofMain.h"
#include "ofApp.h"

int main(){

    //  here are the most commonly used iOS window settings.
    //------------------------------------------------------
    ofiOSWindowSettings settings;
    settings.enableRetina = true; // enables retina resolution if the device supports it.
    settings.enableDepth = true; // enables depth buffer for 3d drawing.
    settings.enableAntiAliasing = false; // enables anti-aliasing which smooths out graphics on the screen.
    settings.numOfAntiAliasingSamples = 0; // number of samples used for anti-aliasing.
    settings.enableHardwareOrientation = false; // enables native view orientation.
    settings.enableHardwareOrientationAnimation = false; // enables native orientation changes to be animated.
    settings.glesVersion = OFXIOS_RENDERER_ES2; // type of renderer to use, ES1, ES2, ES3
    settings.windowMode = OF_FULLSCREEN;
    
    ofAppiOSWindow * window = (ofAppiOSWindow *)ofCreateWindow(settings).get();
    
    bool bUseNative = true;
    if(bUseNative == true){
        window->startAppWithDelegate("MyAppDelegate");
    } else {
        ofRunApp(new ofApp());
    }
}
