{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.java.jar
unit JarUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TJarUtil = class(TObject)
  public
    jarURL: TURL;
    procedure InitFields;
        constructor Create(jarURL: TURL);
        procedure show; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation

{AB:CODE}

procedure TJarUtil.InitFields;
begin
  
end;
    

constructor TJarUtil.Create(jarURL: TURL);
begin
    inherited Create;
    InitFields;
        Self.jarURL := jarURL;
end;
    

procedure TJarUtil.show;
var
  cache: TArray<ShortInt>;
  conn: TURLConnection;
  jis: TJarInputStream;
  entry: TJarEntry;
  offset: Integer;
  i: Integer;
  newcache: TArray<ShortInt>;
  tmp: TArray<ShortInt>;
begin
        cache := TJava.NewArray<ShortInt>(1024);
        try
            conn := Self.jarURL.openConnection();
            jis := TJarInputStream.Create(conn.getInputStream());
            while True do begin
                entry := jis.getNextJarEntry();
                if (entry) <> (nil) then begin
                    if not (entry.isDirectory()) then begin
                        offset := 0;
                        i := 0;
                        while ((TJava.Assign(i, jis.read(cache, offset, (System.Length(cache)) - (offset))))) <> (-1) do begin
                            offset := (offset) + (i);
                            if (offset) >= (System.Length(cache)) then begin
                                newcache := TJava.NewArray<ShortInt>((System.Length(cache)) + (1024));
                                TJava.ArrayCopy<ShortInt>(cache, 0, newcache, 0, System.Length(cache));
                                cache := newcache;
                            end;
                        end;
                        tmp := TJava.NewArray<ShortInt>(offset);
                        TJava.ArrayCopy<ShortInt>(cache, 0, tmp, 0, offset);
                        WriteLn(entry.getName());
                    end;
                end else begin
                    Break;
                end;
            end;
        except
            on ex: TIOException do begin
            WriteLn(ex);
            WriteLn(ex.Message);
            end;
        end;
end;
    

// throws Exception
class procedure TJarUtil.main(args: TArray<string>);
begin
        TJarUtil.Create(TURL.Create('file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar')).show();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

