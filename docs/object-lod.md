---
icon: "lucide/castle"
tags:
    - "Tools"
    - "LOD"
    - "Generated"
    - "Landscape"
    - "Visual"
---
# Object LOD
Object LOD generation ensures that objects, trees, and others look the same up close as they do when far away. If the objects shift in shape, disappear, or suddenly pop in, then object LOD needs to be regenerated.

Object LOD is generated with [DynDOLOD](https://www.nexusmods.com/skyrimspecialedition/mods/68518).

Before generating object LODs, you should make sure your [grass cache](grass-cache.md){ data-preview } and [terrain LOD](terrain-lod.md){ data-preview } are in order.

If you're not familiar with DynDOLDO, you can read [it's documentation](https://dyndolod.info).

## Before Generation
Temporarily remove any and all content from the AE Upgrade. Only Fishing, Rare Curios, Survival Mode, and Saints & Seducers are to stay.

!!! tip
    The file names for the creations that should stay are:
    
    - [x] ccbgssse001-Fish.esm
    - [x] ccbgssse037-curios.esl
    - [x] ccbgssse025-advdsgs.esm
    - [x] ccqdrsse001-survivalmode.esl

Disable GTS' DynDOLOD and Texgen outputs.

Run xEdit's Quick Auto Clean on Update.esm, Dawnguard.esm, and HearthFires.esm

Disable DynDOLOD loading screens by adding the line `AddLoadScreens=0` to the \[DynDOLOD] section in `DynDOLOD\Edit Scripts\DynDOLOD_SSE.ini`

Enable generation in Bruma by removing 'BSHeartland (Tamriel) - bsheartland.esm' from `DynDOLOD\Edit Scripts\DynDOLOD\Configs\DynDOLOD_SSE_worldspace_ignore.txt`

## Texgen
Run Texgen with Vortex.

The output path should preferably be set to a directory that's directly on a drive, to avoid permission issues. Example: `C:\Texgen_output\`. Be sure to actually create the directory, and make sure it's empty.

### Texgen Settings
- [x] Stitched Object LOD Textues
  - Base Size: ==&nbsp;256&nbsp;==

- [x] Rendered Object LOD Textures
  - Base Size: ==&nbsp;256&nbsp;==

- [x] Tree/Grass LOD Billboards

  - Untis per pixel: ==&nbsp;11.0&nbsp;==
  - Texture size Min: ==&nbsp;32&nbsp;==
  - Max: ==&nbsp;1024&nbsp;==
  - [x] Grass
    - Direct: ==&nbsp;100&nbsp;==
    - Ambient ==&nbsp;80&nbsp;==
  - [ ] HD Grass
  - [x] Tree
    - Direct: ==&nbsp;90&nbsp;==
    - Ambient: ==&nbsp;65&nbsp;==
  - [x] HD Tree
    - Direct: ==&nbsp;90&nbsp;==
    - Ambient: ==&nbsp;65&nbsp;==
    - Smoothness: ==&nbsp;30&nbsp;==
  - [x] Rendered
    - Direct: ==&nbsp;100&nbsp;==
    - Ambient: ==&nbsp;55&nbsp;==
    - Smoothenss: ==&nbsp;0&nbsp;==
---
- Diffuse alpha: BC3 (DXT5)
- Diffuse: BC1 (DXT1)
- Normal specular: BC3 (DXT5)
- Normal: BC1 (DXT1)

### Texgen Output
Create a mod from the Texgen output and install it.

## Generating LODs for GTS
Start DynDOLOD and select advanced mode.

The output path should preferably be set to a directory that's directly on a drive, to avoid permission issues. Example: `C:\DynDOLOD_output\`. Be sure to actually create the directory, and make sure it's empty.

### Worldspaces
Select both FXGlow and Candles.

Make sure all worldspaces are selected, with the exception of the following:

- aaaMBWerewolfNightmareWorld
- aaaMBworld
- BSKHyorkerIsle
- ksws07World
- zDcdGhostSea
- zDcdDwemereth
- zDcdBlindRealm

### Mesh and Reference Rules
The only changes from default are to the tree rules. Set it to the following:

- LOD Level 4: ==&nbsp;Billboard1&nbsp;==
- LOD Level 8: ==&nbsp;Billboard4&nbsp;==
- LOD Level 16: ==&nbsp;Billboard1&nbsp;==
- LOD Level 32: ==&nbsp;Billboard6&nbsp;==
- Flags: ==&nbsp;VWD, TREE&nbsp;==
- Grid: ==&nbsp;NearLOD&nbsp;==
- Reference: ==&nbsp;Unchanged&nbsp;==

### Options
Set the following settings in the options section.

#### Object LOD

  - [x] Object LOD
  - [ ] Level 32
  - [x] Max tile size LOD: ==&nbsp;1024&nbsp;==
  - [x] Max tile size full: ==&nbsp;256&nbsp;==

#### Tree LOD

  - [ ] Tree LOD
  - [x] Ultra
  - [ ] Large
  - [x] Billboard brightness: ==&nbsp;0&nbsp;==
  - [x] Max tile size billboard: ==&nbsp;1024&nbsp;==

#### Dynamic LOD

  - [x] Dynamic LOD
  - [x] NearGridToLoad: ==&nbsp;11&nbsp;==
  - [x] FarGridToLoad: ==&nbsp;21&nbsp;==

#### Occlusion Data

  - [x] Occlusion data
  - [x] Quality: ==&nbsp;3&nbsp;==
  - [x] Plugin

#### Terrain Underside

  - [x] Terrain underside
  - [x] Quality: ==&nbsp;8&nbsp;==
  - [x] Height: ==&nbsp;500&nbsp;==

#### Grass LOD

  - [x] Grass LOD
  - [x] Density: ==&nbsp;60%&nbsp;==
  - [x] Mode: ==&nbsp;1&nbsp;==

#### Lights

  - [x] Glow windows
  - [x] High
  - [ ] Fake lights selected world
  - [x] Fake lights child world

#### Seasons

  - [x] Seasons
    - [x] ==&nbsp;Default, WIN&nbsp;==
  - [ ] Snow

#### References

  - [ ] Prefer base record LOD assignments over rules
  - [x] Upgrade NearGrid large references to FarGrid
  - [x] Large reference bugs workaround
  - [ ] Downgrade FarGrid references to NearGrid
  - [x] Parent > child
  - [x] Child > parent: ==&nbsp;Low&nbsp;==

### DynDOLOD Output
Create a mod from the DynDOLOD output and install it.
