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
// package org.allbinary.opengles
unit GLUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGLUtil = class(TObject)
  public
    BYTES_PER_FLOAT: Integer;
    NULL_FLOAT_BUFFER: TFloatBuffer;
    class var instance: TGLUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGLUtil; static;
        function makeFloatBuffer3(p_a: Single; p_b: Single; p_c: Single): TFloatBuffer; virtual;
        function makeFloatBuffer4(p_a: Single; p_b: Single; p_c: Single; p_d: Single): TFloatBuffer; virtual;
        function makeFloatBuffer(byteBuffer_: TByteBuffer): TFloatBuffer; virtual;
        function position(buffer_: TBuffer; newPosition: Integer): TBuffer; virtual;
        procedure rotateUVs(uvs: TArray<Single>; angleDegrees: Single; pivotU: Single; pivotV: Single); virtual;
  end;

implementation

{AB:CODE}

procedure TGLUtil.InitFields;
begin
  Self.BYTES_PER_FLOAT := 4;
  Self.NULL_FLOAT_BUFFER := TByteBuffer.allocateDirect(0).asFloatBuffer();
end;

constructor TGLUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGLUtil.getInstance: TGLUtil;
begin
        Exit(TGLUtil.instance);
end;
    

function TGLUtil.makeFloatBuffer3(p_a: Single; p_b: Single; p_c: Single): TFloatBuffer;
var
  b: TByteBuffer;
  buffer_: TFloatBuffer;
begin
        b := TByteBuffer.allocateDirect((3) * (Self.BYTES_PER_FLOAT));
        b.order(TByteOrder.nativeOrder());
        buffer_ := b.asFloatBuffer();
        buffer_.put(p_a);
        buffer_.put(p_b);
        buffer_.put(p_c);
        Self.position(buffer_, 0);
        Exit(buffer_);
end;
    

function TGLUtil.makeFloatBuffer4(p_a: Single; p_b: Single; p_c: Single; p_d: Single): TFloatBuffer;
var
  b: TByteBuffer;
  buffer_: TFloatBuffer;
begin
        b := TByteBuffer.allocateDirect((4) * (Self.BYTES_PER_FLOAT));
        b.order(TByteOrder.nativeOrder());
        buffer_ := b.asFloatBuffer();
        buffer_.put(p_a);
        buffer_.put(p_b);
        buffer_.put(p_c);
        buffer_.put(p_d);
        Self.position(buffer_, 0);
        Exit(buffer_);
end;
    

function TGLUtil.makeFloatBuffer(byteBuffer_: TByteBuffer): TFloatBuffer;
var
  b: TByteBuffer;
  buffer_: TFloatBuffer;
  unsigned: Integer;
  v: Single;
begin
        b := TByteBuffer.allocateDirect((byteBuffer_.limit()) * (Self.BYTES_PER_FLOAT));
        b.order(TByteOrder.nativeOrder());
        buffer_ := b.asFloatBuffer();
        
        
        while byteBuffer_.hasRemaining() do begin
            unsigned := ((Integer(Trunc(byteBuffer_.get())))) and ($FF);
            v := ((unsigned)) / (255.0);
            buffer_.put(v);
        end;
        Self.position(buffer_, 0);
        Exit(buffer_);
end;
    

function TGLUtil.position(buffer_: TBuffer; newPosition: Integer): TBuffer;
begin
        Exit(buffer_.position(newPosition));
end;
    

procedure TGLUtil.rotateUVs(uvs: TArray<Single>; angleDegrees: Single; pivotU: Single; pivotV: Single);
var
  angleRad: Double;
  cosA: Double;
  sinA: Double;
  u: Single;
  v: Single;
  du: Single;
  dv: Single;
  ru: Single;
  rv: Single;
  i: Integer;
begin
        angleRad := DegToRad(angleDegrees);
        cosA := Cos(angleRad);
        sinA := Sin(angleRad);
        i := 0;
        while (i) < (System.Length(uvs)) do begin
            u := uvs[i];
            v := uvs[(i) + (1)];
            du := (u) - (pivotU);
            dv := (v) - (pivotV);
            ru := (TJava.ToFloat((((du) * (cosA)) - ((dv) * (sinA))))) + (pivotU);
            rv := (TJava.ToFloat((((du) * (sinA)) + ((dv) * (cosA))))) + (pivotV);
            uvs[i] := ru;
            uvs[(i) + (1)] := rv;
            i := (i) + (2);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGLUtil.instance := TGLUtil.Create();
  {AB:END}

end.

