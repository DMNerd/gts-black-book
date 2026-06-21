---
icon: "lucide/mountain-snow"
tags:
    - "Tools"
    - "LOD"
    - "Generated"
    - "Landscape"
    - "Visual"
---
# Terrain LOD
Terrain LOD is generated with [xLODGen - Terrain](https://stepmodifications.org/forum/topic/13451-xlodgen-terrain-lod-beta-132-for-fnv-fo3-fo4-fo4vr-tes5-sse-tes5vr-enderal-enderalse/). When you move away from terrain and it disappears or does not match the terrain that was there before, that's a terrain LOD issue.

!!! danger
    Install xLODGen to a dedicated directory, and do not mix it with xEdit.

You'll also need [SSE Terrain Tamriel Extend](https://www.nexusmods.com/skyrimspecialedition/mods/54680), but only for generating terrain LOD. It should be disabled after.

You can run xLODGen from Vortex just fine, but be sure to set the following arguments: `-sse` and `-o:"{output path}"`. You should, of course, replace '{output path}' with the path to wherever you want the output to be generated.

!!! tip
    The output path should preferably be set to a directory that's directly on a drive, to avoid permission issues.

    Example: `-o:"C:\xLODGen_output\"`. Be sure to actually create the directory, and make sure it's empty.

## Before Generation
Disable GTS' xLOD Terrain file.

Temporarily remove any and all content from the AE Upgrade. Only Fishing, Rare Curios, Survival Mode, and Saints & Seducers are to stay.

!!! tip
    The file names for the creations that should stay are:
    
    - [x] ccbgssse001-Fish.esm
    - [x] ccbgssse037-curios.esl
    - [x] ccbgssse025-advdsgs.esm
    - [x] ccqdrsse001-survivalmode.esl

All GTS AE content should also be disabled. You can easily find it by searching "Anniversary Edition Upgrade".

## xLODGen Settings
The following settings should be used for terrain LOD generation for GTS. Unless you have a reason to do so, you should replicate these exactly.

- [ ] Objects LOD
- [ ] Trees LOD
- [x] Terrain LOD
- [ ] Occlusion
---
- [x] Height Maps
- [x] Bake normal-maps
- [ ] Bake specular
- [x] Vertex Color Intensity: ==&nbsp;1.00&nbsp;==
- [x] Default size Diffuse: ==&nbsp;16&nbsp;==
- [x] Normal: ==&nbsp;16&nbsp;==
- [x] Seasons: ==&nbsp;Default, WIN&nbsp;==

Be sure to set the settings for all LOD distances.

### LOD 4 Settings
???+ abstract "LOD 4 Settings"
    **Meshes:**
    
    - [x] Quality: ==&nbsp;4&nbsp;==
    - [x] Max Vertices: ==&nbsp;32767&nbsp;==
    - [ ] Optimize Unseen
    - [x] Protect Borders
    - [ ] Hide Quads

    **Diffuse:**

    - [x] Size: ==&nbsp;512&nbsp;==
    - [x] Format: ==&nbsp;DXT1&nbsp;==
    - [x] MipMap
    - [x] Brightness: ==&nbsp;0&nbsp;==
    - [x] Contrast: ==&nbsp;0&nbsp;==
    - [x] Gamma: ==&nbsp;1.15&nbsp;==
  
    **Normal:**
    
    - [x] Size: ==&nbsp;512&nbsp;==
    - [x] Format: ==&nbsp;DXT1&nbsp;==
    - [ ] MipMap
    - [ ] Raise steepness

### LOD 8 Settings
???+ abstract "LOD 8 Settings"
    **Meshes:**
    
    - [x] Quality: ==&nbsp;8&nbsp;==
    - [x] Max Vertices: ==&nbsp;32767&nbsp;==
    - [x] Optimize Unseen: ==&nbsp;550&nbsp;==
    
    **Diffuse:**
    
    - [x] Size: ==&nbsp;256&nbsp;==
    - [x] Format: ==&nbsp;DXT1&nbsp;==
    - [ ] MipMap
    - [x] Brightness: ==&nbsp;0&nbsp;==
    - [x] Contrast: ==&nbsp;0&nbsp;==
    - [x] Gamma: ==&nbsp;1.15&nbsp;==
    
    **Normal:**
    
    - [x] Size: ==&nbsp;256&nbsp;==
    - [x] Format: ==&nbsp;DXT1&nbsp;==
    - [ ] MipMap
    - [ ] Raise steepness

### LOD 16 Settings
???+ abstract "LOD 16 Settings"
      **Meshes:**
      
      - [x] Quality: ==&nbsp;8&nbsp;==
      - [x] Max Vertices: ==&nbsp;32767&nbsp;==
      - [x] Optimize Unseen: ==&nbsp;550&nbsp;==
    
      **Diffuse:**
      
      - [x] Size: ==&nbsp;256&nbsp;==
      - [x] Format: ==&nbsp;DXT1&nbsp;==
      - [ ] MipMap
      - [x] Brightness: ==&nbsp;0&nbsp;==
      - [x] Contrast: ==&nbsp;0&nbsp;==
      - [x] Gamma: ==&nbsp;1.15&nbsp;==
    
      **Normal:**
      
      - [x] Size: ==&nbsp;256&nbsp;==
      - [x] Format: ==&nbsp;DXT1&nbsp;==
      - [ ] MipMap
      - [ ] Raise steepness
    
### LOD 32 Settings
???+ abstract "LOD 32 Settings"
    **Meshes:**
    
    - [x] Quality: ==&nbsp;4&nbsp;==
    - [x] Max Vertices: ==&nbsp;32767&nbsp;==
    - [x] Optimize Unseen: ==&nbsp;550&nbsp;==
  
    **Diffuse:**
    
    - [x] Size: ==&nbsp;256&nbsp;==
    - [x] Format: ==&nbsp;DXT1&nbsp;==
    - [ ] MipMap
    - [x] rightness: ==&nbsp;0&nbsp;==
    - [x] Contrast: ==&nbsp;0&nbsp;==
    - [x] Gamma: ==&nbsp;1.15&nbsp;==
  
    **Normal:**
    
    - [x] Size: ==&nbsp;256&nbsp;==
    - [x] Format: ==&nbsp;DXT1&nbsp;==
    - [ ] MipMap
    - [ ] Raise steepness

## After Generation

After xLODGen is done, go to your output folder and package it like a regular mod.

Remember to disable SSE Terrain Tamriel Extend and re-enable GTS' xLOD Terrain file once you're done. Your mod should be overriding GTS LODs.

Un-remove the AE content, unless you're also generating [Object LOD](./Object LOD).
