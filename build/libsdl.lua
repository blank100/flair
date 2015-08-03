includedirs { "../vendor/sdl/include", "../vendor/sdl/src" }

files {
   "../vendor/sdl/include/**.h",
   "../vendor/sdl/src/*.c",
   "../vendor/sdl/src/*.h",
   "../vendor/sdl/src/atomic/*.c",
   "../vendor/sdl/src/atomic/*.h",
   "../vendor/sdl/src/audio/*.c",
   "../vendor/sdl/src/audio/*.h",
   "../vendor/sdl/src/audio/disk/*.c",
   "../vendor/sdl/src/audio/disk/*.h",
   "../vendor/sdl/src/audio/dummy/*.c",
   "../vendor/sdl/src/audio/dummy/*.h",
   "../vendor/sdl/src/cpuinfo/*.c",
   "../vendor/sdl/src/cpuinfo/*.h",
   "../vendor/sdl/src/dynapi/*.c",
   "../vendor/sdl/src/dynapi/*.h",
   "../vendor/sdl/src/events/*.c",
   "../vendor/sdl/src/events/*.h",
   "../vendor/sdl/src/file/*.c",
   "../vendor/sdl/src/file/*.h",
   "../vendor/sdl/src/haptic/*.c",
   "../vendor/sdl/src/haptic/*.h",
   "../vendor/sdl/src/joystick/*.c",
   "../vendor/sdl/src/joystick/*.h",
   "../vendor/sdl/src/power/*.c",
   "../vendor/sdl/src/power/*.h",
   "../vendor/sdl/src/render/*.c",
   "../vendor/sdl/src/render/*.h",
   "../vendor/sdl/src/render/software/*.c",
   "../vendor/sdl/src/render/software/*.h",
   "../vendor/sdl/src/stdlib/*.c",
   "../vendor/sdl/src/stdlib/*.h",
   "../vendor/sdl/src/thread/*.c",
   "../vendor/sdl/src/thread/*.h",
   "../vendor/sdl/src/timer/*.c",
   "../vendor/sdl/src/timer/*.h",
   "../vendor/sdl/src/video/*.c",
   "../vendor/sdl/src/video/*.h",
   "../vendor/sdl/src/video/dummy/*.c",
   "../vendor/sdl/src/video/dummy/*.h",
   "../vendor/sdl/src/main/dummy/*.c",
   "../vendor/sdl/src/main/dummy/*.h"
}


filter { "action:xcode*" }
   files {
      "../vendor/sdl/src/audio/coreaudio/*.c",
      "../vendor/sdl/src/audio/coreaudio/*.m",
      "../vendor/sdl/src/audio/coreaudio/*.h",
      "../vendor/sdl/src/file/cocoa/*.c",
      "../vendor/sdl/src/file/cocoa/*.m",
      "../vendor/sdl/src/file/cocoa/*.h",
      "../vendor/sdl/src/haptic/darwin/*.c",
      "../vendor/sdl/src/haptic/darwin/*.m",
      "../vendor/sdl/src/haptic/darwin/*.h",
      "../vendor/sdl/src/joystick/darwin/*.c",
      "../vendor/sdl/src/joystick/darwin/*.m",
      "../vendor/sdl/src/joystick/darwin/*.h",
      "../vendor/sdl/src/loadso/dlopen/*.c",
      "../vendor/sdl/src/loadso/dlopen/*.h",
      "../vendor/sdl/src/power/macosx/*.c",
      "../vendor/sdl/src/power/macosx/*.m",
      "../vendor/sdl/src/power/macosx/*.h",
      "../vendor/sdl/src/render/opengl/*.c",
      "../vendor/sdl/src/render/opengl/*.m",
      "../vendor/sdl/src/render/opengl/*.h",
      "../vendor/sdl/src/thread/pthread/*.c",
      "../vendor/sdl/src/thread/pthread/*.h",
      "../vendor/sdl/src/timer/unix/*.c",
      "../vendor/sdl/src/timer/unix/*.h",
      "../vendor/sdl/src/video/cocoa/*.c",
      "../vendor/sdl/src/video/cocoa/*.m",
      "../vendor/sdl/src/video/cocoa/*.h",
      "../vendor/sdl/src/video/x11/*.c",
      "../vendor/sdl/src/video/x11/*.h",
      "../vendor/sdl/src/filesystem/cocoa/*.c",
      "../vendor/sdl/src/filesystem/cocoa/*.m",
      "../vendor/sdl/src/filesystem/cocoa/*.h"
   }

   links {
      "CoreVideo.framework",
      "AudioToolbox.framework",
      "AudioUnit.framework",
      "Cocoa.framework",
      "CoreAudio.framework",
      "IOKit.framework",
      "Carbon.framework",
      "ForceFeedback.framework",
      "CoreFoundation.framework"
   }

   defines {
      "SDL_AUDIO_DRIVER_COREAUDIO=1",
      "SDL_JOYSTICK_IOKIT=1",
      "SDL_HAPTIC_IOKIT=1",
      "SDL_LOADSO_DLOPEN=1",
      "SDL_THREAD_PTHREAD=1",
      "SDL_THREAD_PTHREAD_RECURSIVE_MUTEX=1",
      "SDL_TIMER_UNIX=1",
      "SDL_VIDEO_DRIVER_COCOA=1",
      "SDL_POWER_MACOSX=1",
      "SDL_FILESYSTEM_COCOA=1",
      "SDL_VIDEO_OPENGL=1",
      "SDL_VIDEO_RENDER_OGL=1"
   }


filter { "action:gmake*" }
  files {
    "../vendor/sdl/src/haptic/linux/*.h",
    "../vendor/sdl/src/haptic/linux/*.c",
    "../vendor/sdl/src/joystick/linux/*.h",
    "../vendor/sdl/src/joystick/linux/*.c",
    "../vendor/sdl/src/power/linux/*.h",
    "../vendor/sdl/src/power/linux/*.c",
    "../vendor/sdl/src/render/opengl/*.h",
    "../vendor/sdl/src/render/opengl/*.c",
    "../vendor/sdl/src/thread/pthread/*.h",
    "../vendor/sdl/src/thread/pthread/*.c",
    "../vendor/sdl/src/timer/unix/*.h",
    "../vendor/sdl/src/timer/unix/*.c",
    "../vendor/sdl/src/filesystem/unix/*.h",
    "../vendor/sdl/src/filesystem/unix/*.c",
    "../vendor/sdl/src/loadso/dlopen/*.h",
    "../vendor/sdl/src/loadso/dlopen/*.c",
    "../vendor/sdl/src/audio/alsa/*.h",
    "../vendor/sdl/src/audio/alsa/*.c",
    "../vendor/sdl/src/audio/pulseaudio/*.h",
    "../vendor/sdl/src/audio/pulseaudio/*.c",
    "../vendor/sdl/src/audio/esd/*.h",
    "../vendor/sdl/src/audio/esd/*.c",
    "../vendor/sdl/src/audio/nas/*.h",
    "../vendor/sdl/src/audio/nas/*.c",
    "../vendor/sdl/src/audio/dsp/*.h",
    "../vendor/sdl/src/audio/dsp/*.c",
    "../vendor/sdl/src/video/x11/*.h",
    "../vendor/sdl/src/video/x11/*.c"
  }

  links { "m", "rt", "pthread" }

  defines {
    "SDL_LOADSO_DLOPEN=1",
    "SDL_AUDIO_DRIVER_ALSA=1",
    "SDL_AUDIO_DRIVER_ALSA_DYNAMIC=\\\"libasound.so\\\"",
    "SDL_AUDIO_DRIVER_PULSEAUDIO=1",
    "SDL_AUDIO_DRIVER_PULSEAUDIO_DYNAMIC=\\\"libpulse-simple.so\\\"",
    --"SDL_AUDIO_DRIVER_ESD=1",
    --"SDL_AUDIO_DRIVER_ESD_DYNAMIC=\\\"libesd.so\\\"",
    "SDL_AUDIO_DRIVER_NAS=1",
    "SDL_AUDIO_DRIVER_NAS_DYNAMIC=\\\"libaudio.so\\\"",
    "SDL_AUDIO_DRIVER_OSS=1",
    "SDL_VIDEO_DRIVER_X11=1",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC=\\\"libX11.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XEXT=\\\"libXext.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XCURSOR=\\\"libXcursor.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XINERAMA=\\\"libXinerama.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XINPUT2=\\\"libXi.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XRANDR=\\\"libXrandr.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XSS=\\\"libXss.so\\\"",
    "SDL_VIDEO_DRIVER_X11_DYNAMIC_XVIDMODE=\\\"libXxf86vm.so\\\"",
    "SDL_VIDEO_DRIVER_X11_XCURSOR=1",
    "SDL_VIDEO_DRIVER_X11_XDBE=1",
    "SDL_VIDEO_DRIVER_X11_XINERAMA=1",
    "SDL_VIDEO_DRIVER_X11_XINPUT2=1",
    "SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH=1",
    "SDL_VIDEO_DRIVER_X11_XRANDR=1",
    "SDL_VIDEO_DRIVER_X11_XSCRNSAVER=1",
    "SDL_VIDEO_DRIVER_X11_XSHAPE=1",
    "SDL_VIDEO_DRIVER_X11_XVIDMODE=1",
    "SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS=1",
    "SDL_VIDEO_DRIVER_X11_CONST_PARAM_XEXTADDDISPLAY=1",
    "SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM=1",
    "SDL_INPUT_LINUXEV=1",
    "SDL_JOYSTICK_LINUX=1",
    "SDL_HAPTIC_LINUX=1",
    "SDL_THREAD_PTHREAD=1",
    "SDL_THREAD_PTHREAD_RECURSIVE_MUTEX=1",
    "SDL_TIMER_UNIX=1",
    "SDL_POWER_LINUX=1",
    "SDL_FILESYSTEM_UNIX=1",
    "SDL_VIDEO_OPENGL=1",
    "SDL_VIDEO_RENDER_OGL=1",
    "SDL_VIDEO_OPENGL_GLX=1"
  }

filter { "action:vs*" }
  files {
    "../vendor/sdl/src/thread/generic/SDL_syscond.c",
    "../vendor/sdl/src/thread/generic/SDL_sysmutex_c.h",
    "../vendor/sdl/src/audio/winmm/*.h",
    "../vendor/sdl/src/audio/winmm/*.c",
    "../vendor/sdl/src/core/windows/*.h",
    "../vendor/sdl/src/core/windows/*.c",
    "../vendor/sdl/src/libm/*.h",
    "../vendor/sdl/src/libm/*.c",
    "../vendor/sdl/src/loadso/windows/*.h",
    "../vendor/sdl/src/loadso/windows/*.c",
    "../vendor/sdl/src/power/windows/*.h",
    "../vendor/sdl/src/power/windows/*.c",
    "../vendor/sdl/src/thread/windows/*.h",
    "../vendor/sdl/src/thread/windows/*.c",
    "../vendor/sdl/src/timer/windows/*.h",
    "../vendor/sdl/src/timer/windows/*.c",
    "../vendor/sdl/src/video/windows/*.h",
    "../vendor/sdl/src/video/windows/*.c",
    "../vendor/sdl/src/filesystem/windows/*.h",
    "../vendor/sdl/src/filesystem/windows/*.c",
    "../vendor/sdl/src/audio/directsound/*.h",
    "../vendor/sdl/src/audio/directsound/*.c",
    "../vendor/sdl/src/audio/xaudio2/*.h",
    "../vendor/sdl/src/audio/xaudio2/*.c",
    "../vendor/sdl/src/render/direct3d/*.h",
    "../vendor/sdl/src/render/direct3d/*.c",
    "../vendor/sdl/src/haptic/windows/*.h",
    "../vendor/sdl/src/haptic/windows/*.c",
    "../vendor/sdl/src/joystick/windows/*.h",
    "../vendor/sdl/src/joystick/windows/*.c",
    "../vendor/sdl/src/render/opengl/*.h",
    "../vendor/sdl/src/render/opengl/*.c"
  }

  links { "imm32", "oleaut32", "winmm", "version" }

  defines {
    "SDL_LOADSO_WINDOWS=1",
    "SDL_THREAD_WINDOWS=1",
    "SDL_TIMER_WINDOWS=1",
    "SDL_VIDEO_DRIVER_WINDOWS=1",
    "SDL_POWER_WINDOWS=1",
    "SDL_AUDIO_DRIVER_WINMM=1",
    "SDL_FILESYSTEM_WINDOWS=1",
    "SDL_AUDIO_DRIVER_DSOUND=1",
    "SDL_AUDIO_DRIVER_XAUDIO2=1",
    "SDL_JOYSTICK_DINPUT=1",
    "SDL_HAPTIC_DINPUT=1",
    "SDL_VIDEO_RENDER_D3D=1",
    "SDL_VIDEO_OPENGL=1",
    "SDL_VIDEO_RENDER_OGL=1",
    "SDL_VIDEO_OPENGL_WGL=1",
    "SDL_VIDEO_RENDER_OGL_ES2=0",
    "SDL_VIDEO_OPENGL_ES2=0",
    "SDL_VIDEO_OPENGL_EGL=0"
  }


filter { }