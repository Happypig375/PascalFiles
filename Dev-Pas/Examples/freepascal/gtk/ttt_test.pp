{
  $Id: ttt_test.pp,v 1.1 2002/01/29 17:55:06 peter Exp $

  Converted from C to Pascal by Frank Loemker
  <floemker@techfak.uni-bielefeld.de>
}
program ttt_test;
uses
  glib,gdk,gtk,
  tictactoe;

procedure win (widget : pGtkWidget ; data: gpointer); cdecl;
begin
  writeln ('Yay!');
  tictactoe_clear (pTICTACTOE (widget));
end;


var
  window,ttt : pGtkWidget;
begin
  gtk_init (@argc, @argv);

  window := gtk_window_new (GTK_WINDOW_TOPLEVEL);

  gtk_window_set_title (pGTKWINDOW (window), 'Aspect Frame');

  gtk_signal_connect (pGTKOBJECT (window), 'destroy',
                      GTK_SIGNAL_FUNC (@gtk_exit), NIL);

  gtk_container_set_border_width (pGTKCONTAINER (window), 10);

  ttt := tictactoe_new ();

  gtk_container_add (pGTKCONTAINER (window), ttt);
  gtk_widget_show (ttt);

  gtk_signal_connect (pGTKOBJECT (ttt), 'tictactoe',
                      GTK_SIGNAL_FUNC (@win), NIL);

  gtk_widget_show (window);

  gtk_main ();
end.
{
  $Log: ttt_test.pp,v $
  Revision 1.1  2002/01/29 17:55:06  peter
    * splitted to base and extra

  Revision 1.3  2000/09/09 20:59:15  peter
    * win32 updates

  Revision 1.2  2000/07/13 11:33:18  michael
  + removed logs

}
