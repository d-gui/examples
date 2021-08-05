import core.stdc.stdio  : printf;
import core.stdc.stdlib : free;
import ui.fonts;
import std.string : toStringz;
	

void main() 
{
	auto fontFilePath = 
		queryFont( 
			/* family  */ "arial".toStringz,
			/* style   */ 0, 
			/* height  */ 16, 
			/* slant   */ 0, 
			/* outline */ 0.0f
		);

	if ( fontFilePath )
	{
		printf( "fontFilePath: %s\n", fontFilePath );
		free( fontFilePath );
	}
	else
	{
		printf( "fontFilePath: null\n" );
	}
}

