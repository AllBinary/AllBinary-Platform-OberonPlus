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
// package org.allbinary.graphics.j2me.workarea.tools
unit PointsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, BasicArrayList;

type
  {AB:TYPES}
  TPointsUtil = class(TObject)
  public
    class var instance: TPointsUtil;
    constructor Create;
        class function getInstance: TPointsUtil; static;
        function doTransforms(pointVector: TBasicArrayList; angle: Double; fulcrumPoint: TGPoint): TBasicArrayList; virtual;
  end;

implementation
uses
  VectorRotationGenerator, AngleFactory;


{AB:CODE}

constructor TPointsUtil.Create;
begin
  inherited Create;
end;
    

class function TPointsUtil.getInstance: TPointsUtil;
begin
        Exit(TPointsUtil.instance);
end;
    

// throws Exception
function TPointsUtil.doTransforms(pointVector: TBasicArrayList; angle: Double; fulcrumPoint: TGPoint): TBasicArrayList;
begin
        Exit(TVectorRotationGenerator.getInstance().getListAtAngle(fulcrumPoint.getX(), fulcrumPoint.getY(), pointVector, TAngleFactory.getInstance().getAt((angle))));
end;

initialization
  {AB:INITIALIZATION}
  TPointsUtil.instance := TPointsUtil.Create();
  {AB:END}

end.

