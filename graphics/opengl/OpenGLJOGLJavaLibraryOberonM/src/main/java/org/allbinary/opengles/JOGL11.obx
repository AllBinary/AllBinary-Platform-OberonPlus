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
unit JOGL11;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL2, Buffer, FloatBuffer, IntBuffer, JOGL10, GL11, GL10;

type
  {AB:TYPES}
  // JOGLEToKhronosGL11
  TJOGL11 = class(TJOGL10, IGL11, IGL, IGL10)
  public
    gl11: TGL2;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gl_: IGL); overload;
        constructor Create(gl_: IGL; gl2_: TGL2); overload;
        procedure glBindBuffer(target: Integer; buffer_: Integer); virtual;
        procedure glBufferData(target: Integer; size: Integer; data: TBuffer; usage: Integer); virtual;
        procedure glBufferSubData(target: Integer; offset: Integer; size: Integer; data: TBuffer); virtual;
        procedure glClipPlanef(plane: Integer; equation: TArray<Single>; offset: Integer); overload; virtual;
        procedure glClipPlanef(plane: Integer; equation: TFloatBuffer); overload; virtual;
        procedure glColor4ub(red: ShortInt; green: ShortInt; blue: ShortInt; alpha: ShortInt); virtual;
        procedure glColorPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer); virtual;
        procedure glDeleteBuffers(n: Integer; buffers: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glDeleteBuffers(n: Integer; buffers: TIntBuffer); overload; virtual;
        procedure glDrawElements(mode: Integer; count: Integer; type_: Integer; offset: Integer); virtual;
        procedure glGenBuffers(n: Integer; buffers: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGenBuffers(n: Integer; buffers: TIntBuffer); overload; virtual;
        procedure glGetBufferParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGetBufferParameteriv(target: Integer; pname: Integer; params: TIntBuffer); overload; virtual;
        procedure glGetClipPlanef(pname: Integer; eqn: TArray<Single>; offset: Integer); overload; virtual;
        procedure glGetClipPlanef(pname: Integer; eqn: TFloatBuffer); overload; virtual;
        procedure glGetFloatv(pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glGetFloatv(pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glGetLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glGetLightfv(light: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glGetMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glGetMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glGetTexEnviv(env: Integer; pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGetTexEnviv(env: Integer; pname: Integer; params: TIntBuffer); overload; virtual;
        procedure glGetTexParameterfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glGetTexParameterfv(target: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glGetTexParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGetTexParameteriv(target: Integer; pname: Integer; params: TIntBuffer); overload; virtual;
        function glIsBuffer(buffer_: Integer): Boolean; virtual;
        function glIsEnabled(cap: Integer): Boolean; virtual;
        function glIsTexture(texture: Integer): Boolean; virtual;
        procedure glNormalPointer(type_: Integer; stride: Integer; offset: Integer); virtual;
        procedure glPointParameterf(pname: Integer; param: Single); virtual;
        procedure glPointParameterfv(pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glPointParameterfv(pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer); virtual;
        procedure glTexEnvi(target: Integer; pname: Integer; param: Integer); virtual;
        procedure glTexEnviv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glTexEnviv(target: Integer; pname: Integer; params: TIntBuffer); overload; virtual;
        procedure glTexParameterfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glTexParameterfv(target: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glTexParameteri(target: Integer; pname: Integer; param: Integer); virtual;
        procedure glTexParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glTexParameteriv(target: Integer; pname: Integer; params: TIntBuffer); overload; virtual;
        procedure glTexParameterxv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer); virtual;
        procedure glVertexPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TJOGL11.InitFields;
begin
  
end;

function TJOGL11.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TJOGL11.Create(gl_: IGL);
begin
        Create(gl_, TGL2(TJava.ToObject(gl_)));
end;
    

constructor TJOGL11.Create(gl_: IGL; gl2_: TGL2);
begin
        inherited Create(gl_, gl2_);
        InitFields;
        Self.gl11 := Self.getJOGLGL();
end;
    

procedure TJOGL11.glBindBuffer(target: Integer; buffer_: Integer);
begin
        Self.gl11.glBindBuffer(target, buffer_);
end;
    

procedure TJOGL11.glBufferData(target: Integer; size: Integer; data: TBuffer; usage: Integer);
begin
        Self.gl11.glBufferData(target, size, data, usage);
end;
    

procedure TJOGL11.glBufferSubData(target: Integer; offset: Integer; size: Integer; data: TBuffer);
begin
        Self.gl11.glBufferSubData(target, offset, size, data);
end;
    

procedure TJOGL11.glClipPlanef(plane: Integer; equation: TArray<Single>; offset: Integer);
begin
        Self.gl11.glClipPlanef(plane, equation, offset);
end;
    

procedure TJOGL11.glClipPlanef(plane: Integer; equation: TFloatBuffer);
begin
        Self.gl11.glClipPlanef(plane, equation);
end;
    

procedure TJOGL11.glColor4ub(red: ShortInt; green: ShortInt; blue: ShortInt; alpha: ShortInt);
begin
        Self.gl11.glColor4ub(red, green, blue, alpha);
end;
    

procedure TJOGL11.glColorPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer);
begin
        Self.gl11.glColorPointer(size, type_, stride, offset);
end;
    

procedure TJOGL11.glDeleteBuffers(n: Integer; buffers: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glDeleteBuffers(n, buffers, offset);
end;
    

procedure TJOGL11.glDeleteBuffers(n: Integer; buffers: TIntBuffer);
begin
        Self.gl11.glDeleteBuffers(n, buffers);
end;
    

procedure TJOGL11.glDrawElements(mode: Integer; count: Integer; type_: Integer; offset: Integer);
begin
        Self.gl11.glDrawElements(mode, count, type_, offset);
end;
    

procedure TJOGL11.glGenBuffers(n: Integer; buffers: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glGenBuffers(n, buffers, offset);
end;
    

procedure TJOGL11.glGenBuffers(n: Integer; buffers: TIntBuffer);
begin
        Self.gl11.glGenBuffers(n, buffers);
end;
    

procedure TJOGL11.glGetBufferParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glGetBufferParameteriv(target, pname, params, offset);
end;
    

procedure TJOGL11.glGetBufferParameteriv(target: Integer; pname: Integer; params: TIntBuffer);
begin
        Self.gl11.glGetBufferParameteriv(target, pname, params);
end;
    

procedure TJOGL11.glGetClipPlanef(pname: Integer; eqn: TArray<Single>; offset: Integer);
begin
        Self.gl11.glGetClipPlanef(pname, eqn, offset);
end;
    

procedure TJOGL11.glGetClipPlanef(pname: Integer; eqn: TFloatBuffer);
begin
        Self.gl11.glGetClipPlanef(pname, eqn);
end;
    

procedure TJOGL11.glGetFloatv(pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Self.gl11.glGetFloatv(pname, params, offset);
end;
    

procedure TJOGL11.glGetFloatv(pname: Integer; params: TFloatBuffer);
begin
        Self.gl11.glGetFloatv(pname, params);
end;
    

procedure TJOGL11.glGetLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Self.gl11.glGetLightfv(light, pname, params, offset);
end;
    

procedure TJOGL11.glGetLightfv(light: Integer; pname: Integer; params: TFloatBuffer);
begin
        Self.gl11.glGetLightfv(light, pname, params);
end;
    

procedure TJOGL11.glGetMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Self.gl11.glGetMaterialfv(face, pname, params, offset);
end;
    

procedure TJOGL11.glGetMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer);
begin
        Self.gl11.glGetMaterialfv(face, pname, params);
end;
    

procedure TJOGL11.glGetTexEnviv(env: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glGetTexEnviv(env, pname, params, offset);
end;
    

procedure TJOGL11.glGetTexEnviv(env: Integer; pname: Integer; params: TIntBuffer);
begin
        Self.gl11.glGetTexEnviv(env, pname, params);
end;
    

procedure TJOGL11.glGetTexParameterfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Self.gl11.glGetTexParameterfv(target, pname, params, offset);
end;
    

procedure TJOGL11.glGetTexParameterfv(target: Integer; pname: Integer; params: TFloatBuffer);
begin
        Self.gl11.glGetTexParameterfv(target, pname, params);
end;
    

procedure TJOGL11.glGetTexParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glGetTexParameteriv(target, pname, params, offset);
end;
    

procedure TJOGL11.glGetTexParameteriv(target: Integer; pname: Integer; params: TIntBuffer);
begin
        Self.gl11.glGetTexParameteriv(target, pname, params);
end;
    

function TJOGL11.glIsBuffer(buffer_: Integer): Boolean;
begin
        Exit(Self.gl11.glIsBuffer(buffer_));
end;
    

function TJOGL11.glIsEnabled(cap: Integer): Boolean;
begin
        Exit(Self.gl11.glIsEnabled(cap));
end;
    

function TJOGL11.glIsTexture(texture: Integer): Boolean;
begin
        Exit(Self.gl11.glIsTexture(texture));
end;
    

procedure TJOGL11.glNormalPointer(type_: Integer; stride: Integer; offset: Integer);
begin
        Self.gl11.glNormalPointer(type_, stride, offset);
end;
    

procedure TJOGL11.glPointParameterf(pname: Integer; param: Single);
begin
        Self.gl11.glPointParameterf(pname, param);
end;
    

procedure TJOGL11.glPointParameterfv(pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Self.gl11.glPointParameterfv(pname, params, offset);
end;
    

procedure TJOGL11.glPointParameterfv(pname: Integer; params: TFloatBuffer);
begin
        Self.gl11.glPointParameterfv(pname, params);
end;
    

procedure TJOGL11.glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer);
begin
        Self.gl11.glTexCoordPointer(size, type_, stride, offset);
end;
    

procedure TJOGL11.glTexEnvi(target: Integer; pname: Integer; param: Integer);
begin
        Self.gl11.glTexEnvi(target, pname, param);
end;
    

procedure TJOGL11.glTexEnviv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glTexEnviv(target, pname, params, offset);
end;
    

procedure TJOGL11.glTexEnviv(target: Integer; pname: Integer; params: TIntBuffer);
begin
        Self.gl11.glTexEnviv(target, pname, params);
end;
    

procedure TJOGL11.glTexParameterfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Self.gl11.glTexParameterfv(target, pname, params, offset);
end;
    

procedure TJOGL11.glTexParameterfv(target: Integer; pname: Integer; params: TFloatBuffer);
begin
        Self.gl11.glTexParameterfv(target, pname, params);
end;
    

procedure TJOGL11.glTexParameteri(target: Integer; pname: Integer; param: Integer);
begin
        Self.gl11.glTexParameteri(target, pname, param);
end;
    

procedure TJOGL11.glTexParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glTexParameteriv(target, pname, params, offset);
end;
    

procedure TJOGL11.glTexParameteriv(target: Integer; pname: Integer; params: TIntBuffer);
begin
        Self.gl11.glTexParameteriv(target, pname, params);
end;
    

procedure TJOGL11.glTexParameterxv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Self.gl11.glTexParameteriv(target, pname, params, offset);
end;
    

procedure TJOGL11.glVertexPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer);
begin
        Self.gl11.glVertexPointer(size, type_, stride, offset);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

