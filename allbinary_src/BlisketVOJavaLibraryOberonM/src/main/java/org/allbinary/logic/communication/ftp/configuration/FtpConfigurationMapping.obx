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
// package org.allbinary.logic.communication.ftp.configuration
unit FtpConfigurationMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, FtpConfigurationInterface;

type
  {AB:TYPES}
  TFtpConfigurationMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    ftpConfigurationInterface: IFtpConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(ftpConfigurationInterface_: IFtpConfigurationInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  FtpConfigurationData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TFtpConfigurationMapping.InitFields;
begin
  
end;

function TFtpConfigurationMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFtpConfigurationMapping.Create(ftpConfigurationInterface_: IFtpConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.ftpConfigurationInterface := ftpConfigurationInterface_;
end;
    

function TFtpConfigurationMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TFtpConfigurationData.SERVER), TJava.Box(Self.ftpConfigurationInterface.getServer()));
        hashMap_.put(TJava.Box(TFtpConfigurationData.USERNAME), TJava.Box(Self.ftpConfigurationInterface.getUserName()));
        hashMap_.put(TJava.Box(TFtpConfigurationData.PASSWORD), TJava.Box(Self.ftpConfigurationInterface.getPassword()));
        hashMap_.put(TJava.Box(TFtpConfigurationData.PATH), TJava.Box(Self.ftpConfigurationInterface.getPath()));
        Exit(hashMap_);
end;
    

// throws Exception
function TFtpConfigurationMapping.getKey: TObject;
begin
        Exit(TJava.Box(TFtpConfigurationData.NAME));
end;
    

// throws Exception
function TFtpConfigurationMapping.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.ftpConfigurationInterface.getServer()));
        vector.add(TJava.Box(Self.ftpConfigurationInterface.getUserName()));
        vector.add(TJava.Box(Self.ftpConfigurationInterface.getPassword()));
        vector.add(TJava.Box(Self.ftpConfigurationInterface.getPath()));
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

