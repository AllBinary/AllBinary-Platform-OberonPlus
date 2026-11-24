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
// package org.allbinary.image
unit ChoiceGroupImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics;

type
  {AB:TYPES}
  TChoiceGroupImageUtil = class(TObject)
  public
    class var instance: TChoiceGroupImageUtil;
    constructor Create;
        class function getInstance: TChoiceGroupImageUtil; static;
        procedure init; virtual;
        procedure update(gl_: IGL); overload; virtual;
        procedure update(graphics_: TGraphics); overload; virtual;
  end;

implementation
uses
  PreResourceImageUtil, ChoiceGroupImageFactory, Image, OpenGLFeatureFactory, Features;


{AB:CODE}

constructor TChoiceGroupImageUtil.Create;
begin
  inherited Create;
end;
    

class function TChoiceGroupImageUtil.getInstance: TChoiceGroupImageUtil;
begin
        Exit(TChoiceGroupImageUtil.instance);
end;
    

procedure TChoiceGroupImageUtil.init;
var
  features_: TFeatures;
  choiceGroupFactory: TChoiceGroupImageFactory;
  imageArray: TArray<TImage>;
  preResourceImageUtil_: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        features_ := TFeatures.getInstance();
        choiceGroupFactory := TChoiceGroupImageFactory.getInstance();
        imageArray := choiceGroupFactory.getImageArray();
        if features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            preResourceImageUtil_ := TPreResourceImageUtil.getInstance();
            size := System.Length(imageArray);
            for index := 0 to size - 1 do begin
                imageArray[index] := preResourceImageUtil_.encapsulate(imageArray[index]);
            end;
            choiceGroupFactory.init(imageArray);
        end;
end;
    

procedure TChoiceGroupImageUtil.update(gl_: IGL);
var
  features_: TFeatures;
  choiceGroupFactory: TChoiceGroupImageFactory;
  imageArray: TArray<TImage>;
  preResourceImageUtil_: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        features_ := TFeatures.getInstance();
        choiceGroupFactory := TChoiceGroupImageFactory.getInstance();
        imageArray := choiceGroupFactory.getImageArray();
        if features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            preResourceImageUtil_ := TPreResourceImageUtil.getInstance();
            size := System.Length(imageArray);
            for index := 0 to size - 1 do begin
                preResourceImageUtil_.updateGL(gl_, imageArray[index]);
            end;
        end;
        choiceGroupFactory.init(imageArray);
end;
    

procedure TChoiceGroupImageUtil.update(graphics_: TGraphics);
var
  features_: TFeatures;
  choiceGroupFactory: TChoiceGroupImageFactory;
  imageArray: TArray<TImage>;
  preResourceImageUtil_: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        features_ := TFeatures.getInstance();
        choiceGroupFactory := TChoiceGroupImageFactory.getInstance();
        imageArray := choiceGroupFactory.getImageArray();
        if features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            preResourceImageUtil_ := TPreResourceImageUtil.getInstance();
            size := System.Length(imageArray);
            for index := 0 to size - 1 do begin
                preResourceImageUtil_.update(graphics_, imageArray[index]);
            end;
        end;
        choiceGroupFactory.init(imageArray);
end;

initialization
  {AB:INITIALIZATION}
  TChoiceGroupImageUtil.instance := TChoiceGroupImageUtil.Create();
  {AB:END}

end.

