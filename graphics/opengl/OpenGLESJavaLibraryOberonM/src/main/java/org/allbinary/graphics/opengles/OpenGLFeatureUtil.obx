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
// package org.allbinary.graphics.opengles
unit OpenGLFeatureUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLFeatureUtil = class(TObject)
  public
    anyThreed: Boolean;
    class var instance: TOpenGLFeatureUtil;
    procedure InitFields;
        class function getInstance: TOpenGLFeatureUtil; static;
        constructor Create;
        function isAnyThreed: Boolean; virtual;
  end;

implementation
uses
  OpenGLConfiguration, OpenGLFeatureFactory, Features;


{AB:CODE}

procedure TOpenGLFeatureUtil.InitFields;
begin
  
end;
    

class function TOpenGLFeatureUtil.getInstance: TOpenGLFeatureUtil;
begin
        Exit(TOpenGLFeatureUtil.instance);
end;
    

constructor TOpenGLFeatureUtil.Create;
var
  openGLConfiguration_: TOpenGLConfiguration;
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
begin
    inherited Create;
    InitFields;
        openGLConfiguration_ := TOpenGLConfiguration.getInstance();
        features_ := TFeatures.getInstance();
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        Self.anyThreed := (openGLConfiguration_.isOpenGL()) and (((features_.isFeature(openGLFeatureFactory_.OPENGL_2D_AND_3D)) or (features_.isFeature(openGLFeatureFactory_.OPENGL_3D))));
end;
    

function TOpenGLFeatureUtil.isAnyThreed: Boolean;
begin
        Exit(Self.anyThreed);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLFeatureUtil.instance := TOpenGLFeatureUtil.Create();
  {AB:END}

end.

