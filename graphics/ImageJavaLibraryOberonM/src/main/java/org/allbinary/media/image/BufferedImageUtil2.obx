// Generated Code Do Not Modify
// package org.allbinary.media.image
unit BufferedImageUtil2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageUtil;

type
  {AB:TYPES}
  TBufferedImageUtil2 = class(TObject)
  public
    imageUtil: TImageUtil;
    class var instance: TBufferedImageUtil2;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBufferedImageUtil2; static;
        function createSpriteImage(bufferedImageArray: TArray<TBufferedImage>): TBufferedImage; virtual;
  end;

implementation
uses
  Graphics2D;


{AB:CODE}

procedure TBufferedImageUtil2.InitFields;
begin
  Self.imageUtil := TImageUtil.getInstance();
end;

constructor TBufferedImageUtil2.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBufferedImageUtil2.getInstance: TBufferedImageUtil2;
begin
        Exit(TBufferedImageUtil2.instance);
end;
    

function TBufferedImageUtil2.createSpriteImage(bufferedImageArray: TArray<TBufferedImage>): TBufferedImage;
var
  columns: Integer;
  max: Integer;
  rows: Integer;
  bufferedImage_: TBufferedImage;
  g: TGraphics2D;
  columnIndex: Integer;
  rowIndex: Integer;
  index: Integer;
begin
        columns := System.Length(bufferedImageArray);
        max := columns;
        rows := 0;
        if (System.Length(bufferedImageArray)) < (columns) then begin
            columns := System.Length(bufferedImageArray);
        end;
        rows := ((System.Length(bufferedImageArray)) div (columns));
        if ((System.Length(bufferedImageArray)) mod (columns)) <> (0) then begin
            Inc(rows);
        end;
        bufferedImage_ := Self.imageUtil.create_((bufferedImageArray[0].getWidth(nil)) * (columns), (bufferedImageArray[0].getHeight(nil)) * (rows));
        g := bufferedImage_.createGraphics();
        columnIndex := 0;
        rowIndex := 0;
        for index := 0 to System.Length(bufferedImageArray) - 1 do begin
            if (((index) div (max)) <> (0)) and (((index) mod (max)) = (0)) then begin
                Inc(rowIndex);
                columnIndex := 0;
            end;
            g.drawImage(bufferedImageArray[index], (bufferedImageArray[index].getWidth(nil)) * (columnIndex), (bufferedImageArray[index].getHeight(nil)) * (rowIndex), bufferedImageArray[index].getWidth(nil), bufferedImageArray[index].getHeight(nil), nil);
            Inc(columnIndex);
        end;
        g.dispose_();
        Exit(bufferedImage_);
end;

initialization
  {AB:INITIALIZATION}
  TBufferedImageUtil2.instance := TBufferedImageUtil2.Create();
  {AB:END}

end.

