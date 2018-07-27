{
    $Id: createds.pp,v 1.1 2000/09/01 22:02:10 peter Exp $
    This file is part of the Free Pascal run time library.
    Copyright (c) 1999-2000 by Michael Van Canneyt, member of the
    Free Pascal development team

    Creates a flat datafile for use with testds.

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}
program createds;

{$mode delphi}

uses ddg_rec,sysutils;

Type IndexFile = File Of Longint;

Var F : TDDGDataFile;
    I : Integer;
    S : String;
    L : IndexFile;
    TableName : String;
    IndexName : String;
    ARec : TDDGData;

begin
  If ParamCount<>1 then
    begin
    Writeln('Usage: createds tablename');
    Halt(1);
    end;
  TableName:=ChangeFileExt(paramstr(1),'.ddg');
  IndexName:=ChangeFileExt(TableName,'.ddx');
  Assign(F,TableName);
  Rewrite(F);
  For I:=1 to 100 do
    begin
    S:=Format('This is person %d.',[i]);
    With Arec Do
      begin
      Name:=S;
      height:=I*0.001;
      LongField:=i*4;
      ShoeSize:=I;
      WordField:=i*2;
      DateTimeField:=Now;
      TimeField:=Time;
      DateField:=Date;
      Even:=(I mod 2) = 0
      end;
    Write(F,ARec);
    end;
  Close(F);
  Assign(L,IndexName);
  Rewrite(L);
  For I:=0 to 100-1 do
    Write(L,I);
  Close(L);
end.
{
  $Log: createds.pp,v $
  Revision 1.1  2000/09/01 22:02:10  peter
    * build also db

  Revision 1.1  2000/07/13 06:31:27  michael
  + Initial import

  Revision 1.6  2000/01/07 01:24:32  peter
    * updated copyright to 2000

  Revision 1.5  2000/01/06 01:20:32  peter
    * moved out of packages/ back to topdir

  Revision 1.1  2000/01/03 19:33:05  peter
    * moved to packages dir

  Revision 1.3  1999/11/11 17:31:09  michael
  + Added Checks for all simple field types.
  + Initial implementation of Insert/Append

  Revision 1.2  1999/10/24 17:07:54  michael
  + Added copyright header

}