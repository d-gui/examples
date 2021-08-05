import deps.glfw;
import deps.gl3;
import core.stdc.stdio : printf;
import ui.window       : createMainWindow;
import ui.window       : MainWindow;
import ui.text         : drawText;
import ui.glerrors     : checkGlError;


MainWindow win;


void main() 
{
	win = createMainWindow( 800, 600, "OpenGL" );
	initGL();
	mainLoop();
}


nothrow @nogc
void initGL()
{
    // Back color
    //glClearColor( .4, .4, .4, 1 ); checkGlError( "glClearColor" );

    // Texture blending
    //glDisable( GL_DEPTH_TEST ); checkGlError( "glDisable" );
    //glEnable( GL_BLEND ); checkGlError( "glEnable" );
    //glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA ); checkGlError( "glBlendFunc" );

    // Shaders
    import ui.shaders;
    loadShaders();
}


nothrow @nogc
void draw()
{
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

	int width, height;
	glfwGetFramebufferSize( win, &width, &height );
	glViewport( 0, 0, width, height );

	//
	drawText( 
		"Hola!", 
		10, 300, 
		1.0f, 1.0f, 1.0f,
		"arial",
		16,
		0,
		0,
		96 
	);
}


/** */
nothrow @nogc
void mainLoop()
{
	while ( !glfwWindowShouldClose( win ) ) 
	{
		draw();
		glfwSwapBuffers( win );
		glfwPollEvents();
	}
}

