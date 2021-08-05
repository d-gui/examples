# Examples

## fonts
```D
    import ui.fonts;


    auto fontFilePath = 
        queryFont( 
            /* family  */ "arial".toStringz,
            /* style   */ 0, 
            /* height  */ 16, 
            /* slant   */ 0, 
            /* outline */ 0.0f
        );

    printf( "fontFilePath: %s\n", fontFilePath );

    free( fontFilePath );
```
![fonts-list.png](demo/fonts-list.png)

## line
![line-gl3.png](demo/line-gl3.png)

## window
![window-glfw.png](demo/window-glfw.png)
