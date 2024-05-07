# [A.D.E.] Advanced Diving Environment - Reloaded by Brigata Lancieri

A.D.E. is mod for Arma 3 which introduces enhanced underwater environment mechanics, including:
- different gas mixtures, available in separate tanks;
- gas saturation into body tissues when at depth;
- negative effects of rapid decompression;
- a dive computer to keep track of tank pressure and current saturation;

It is available [on the Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3002787343).

## How to build
This project uses [HEMTT](https://brettmayson.github.io/HEMTT/index.html) for development builds and releases.

To build your project, [install the HEMTT.exe](https://brettmayson.github.io/HEMTT/installation.html) either into your project directory or globally by adding it to your `PATH` system-variable.

Afterwards, you can create test/release builds via `build-test.bat` and `build-release.bat`, or development builds with `build-dev.bat` to allow file patching.

### Dev Build File Patching (explanation from [ACRE2](https://acre2.idi-systems.com/wiki/development/building#file-patching))
File Patching allows you to change the files in an addon while the game is running, requiring only a restart of the mission. This makes it great for debugging, as it cuts down the time required between tests.

To run Arma 3 with file patching add the `-filePatching` startup parameter.

Files must exist in the built PBOs for file patching to work. If you create a new file you must rebuild the PBO or Arma will not find it in your file paths.

By default CBA caches a compiled version of functions to reduce mission load times. This interferes with file patching. There are three ways to disable function caching:

- Load `cba_cache_disable.pbo` (included in CBA's optionals folder - simply move it to `/addons` folder)
- Add the following to your test missions `description.ext`:
```hpp
class CfgSettings {
    class CBA {
        class Caching {
            compile = 0;
            xeh = 0;
            functions = 0;
        };
    };
};
```
- To only disable caching for a single module, hence greatly improving mission restart time, add the following line to the `script_component.hpp` file of said module:
```hpp
#define DISABLE_COMPILE_CACHE
```

## Licence
This re-release is licensed using the [Arma Public License Share Alike (APL-SA)](https://www.bohemia.net/community/licenses/arma-public-license-share-alike).
