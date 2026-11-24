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
// package org.allbinary.business.context.modules.storefronts
unit BasicStoreFront;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicStoreFrontInterface;

type
  {AB:TYPES}
  TBasicStoreFront = class(TInterfacedObject, IBasicStoreFrontInterface)
  public
    name: string;
    userName: string;
    basketName: string;
    homeHostName: string;
    homeHostNamePath: string;
    hostName: string;
    hostNamePath: string;
    testHomeHostName: string;
    testHomeHostNamePath: string;
    testHostName: string;
    testHostNamePath: string;
    imagePath: string;
    staticPath: string;
    categoryPath: string;
    inventoryControl: string;
    subStores: string;
    tagLocation: string;
    packageLocation: string;
    ftp: string;
    ftpPath: string;
    ftpUserName: string;
    ftpPassword: string;
    testFtp: string;
    testFtpPath: string;
    testFtpUserName: string;
    testFtpPassword: string;
    timeCreated: string;
    lastModified: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(storeHashMap: TJavaHashMap<TObject, TObject>); overload;
        function getTestHtmlPath: string; virtual;
        function getCurrentHostName: string; virtual;
        function getCurrentHostNamePath: string; virtual;
        function getCurrentHomeHostName: string; virtual;
        function getCurrentHomeHostNamePath: string; virtual;
        function getName: string; virtual;
        function getUserName: string; virtual;
        function getBasketName: string; virtual;
        function getHomeHostName: string; virtual;
        function getHomeHostNamePath: string; virtual;
        function getHostName: string; virtual;
        function getHostNamePath: string; virtual;
        function getTestHomeHostName: string; virtual;
        function getTestHomeHostNamePath: string; virtual;
        function getTestHostName: string; virtual;
        function getTestHostNamePath: string; virtual;
        function getStaticPath: string; virtual;
        function getCategoryPath: string; virtual;
        function getInventoryControl: string; virtual;
        function getSubStores: TBasicArrayList; virtual;
        function getTagLocation: string; virtual;
        function getPackageLocation: string; virtual;
        function getFtp: string; virtual;
        function getFtpUserName: string; virtual;
        function getFtpPassword: string; virtual;
        function getTestFtp: string; virtual;
        function getTestFtpUserName: string; virtual;
        function getTestFtpPassword: string; virtual;
        function getFtpPath: string; virtual;
        function getTestFtpPath: string; virtual;
        function getTimeCreated: string; virtual;
        function getLastModified: string; virtual;
  end;

implementation
uses
  StoreFrontData, EntryData, UserData, Tokenizer, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TBasicStoreFront.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TBasicStoreFront.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicStoreFront.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TBasicStoreFront.Create(storeHashMap: TJavaHashMap<TObject, TObject>);
var
  storeFrontData_: TStoreFrontData;
begin
    inherited Create;
    InitFields;
        storeFrontData_ := TStoreFrontData.getInstance();
        Self.name := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.NAME))));
        Self.userName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(TUserData.USERNAME))));
        Self.basketName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.NAME))));
        Self.homeHostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.HOMEHOSTNAME))));
        Self.homeHostNamePath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.HOMEHOSTNAMEPATH))));
        Self.hostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.HOSTNAME))));
        Self.hostNamePath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.HOSTNAMEPATH))));
        Self.testHomeHostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTHOMEHOSTNAME))));
        Self.testHomeHostNamePath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTHOMEHOSTNAMEPATH))));
        Self.testHostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTHOSTNAME))));
        Self.testHostNamePath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTHOSTNAMEPATH))));
        Self.imagePath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.IMAGEPATH))));
        Self.staticPath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.STATICPATH))));
        Self.categoryPath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.CATEGORYPATH))));
        Self.inventoryControl := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.INVENTORYCONTROL))));
        Self.subStores := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.SUBSTORES))));
        Self.tagLocation := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TAGLOCATION))));
        Self.packageLocation := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.PACKAGELOCATION))));
        Self.ftp := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTP))));
        Self.ftpPath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTPPATH))));
        Self.ftpUserName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTPUSERNAME))));
        Self.ftpPassword := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTPPASSWORD))));
        Self.testFtp := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTP))));
        Self.testFtpPath := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTPPATH))));
        Self.testFtpUserName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTPUSERNAME))));
        Self.testFtpPassword := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTPPASSWORD))));
        Self.timeCreated := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(TEntryData.getInstance().TIMECREATED))));
        Self.lastModified := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(TEntryData.getInstance().LASTMODIFIED))));
end;
    

function TBasicStoreFront.getTestHtmlPath: string;
begin
        Exit((Torg.allbinary.globals.URLGLOBALS.getTestHtmlPath()) + (Self.getCurrentHostNamePath()));
end;
    

function TBasicStoreFront.getCurrentHostName: string;
var
  location: string;
begin
        location := nil;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHostName();
        end else begin
            location := Self.getHostName();
        end;
        Exit(location);
end;
    

function TBasicStoreFront.getCurrentHostNamePath: string;
var
  location: string;
begin
        location := nil;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHostNamePath();
        end else begin
            location := Self.getHostNamePath();
        end;
        Exit(location);
end;
    

function TBasicStoreFront.getCurrentHomeHostName: string;
var
  location: string;
begin
        location := nil;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHomeHostName();
        end else begin
            location := Self.getHomeHostName();
        end;
        Exit(location);
end;
    

function TBasicStoreFront.getCurrentHomeHostNamePath: string;
var
  location: string;
begin
        location := nil;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHomeHostNamePath();
        end else begin
            location := Self.getHomeHostNamePath();
        end;
        Exit(location);
end;
    

function TBasicStoreFront.getName: string;
begin
        Exit(Self.name);
end;
    

function TBasicStoreFront.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TBasicStoreFront.getBasketName: string;
begin
        Exit(Self.basketName);
end;
    

function TBasicStoreFront.getHomeHostName: string;
begin
        Exit(Self.homeHostName);
end;
    

function TBasicStoreFront.getHomeHostNamePath: string;
begin
        Exit(Self.homeHostNamePath);
end;
    

function TBasicStoreFront.getHostName: string;
begin
        Exit(Self.hostName);
end;
    

function TBasicStoreFront.getHostNamePath: string;
begin
        Exit(Self.hostNamePath);
end;
    

function TBasicStoreFront.getTestHomeHostName: string;
begin
        Exit(Self.testHomeHostName);
end;
    

function TBasicStoreFront.getTestHomeHostNamePath: string;
begin
        Exit(Self.testHomeHostNamePath);
end;
    

function TBasicStoreFront.getTestHostName: string;
begin
        Exit(Self.testHostName);
end;
    

function TBasicStoreFront.getTestHostNamePath: string;
begin
        Exit(Self.testHostNamePath);
end;
    

function TBasicStoreFront.getStaticPath: string;
begin
        Exit(Self.staticPath);
end;
    

function TBasicStoreFront.getCategoryPath: string;
begin
        Exit(Self.categoryPath);
end;
    

function TBasicStoreFront.getInventoryControl: string;
begin
        Exit(Self.inventoryControl);
end;
    

// throws Exception
function TBasicStoreFront.getSubStores: TBasicArrayList;
var
  tokenizer_: TTokenizer;
  subStoreVector: TBasicArrayList;
begin
        try
            tokenizer_ := TTokenizer.Create(TCommonSeps.getInstance().SEMICOLON);
            subStoreVector := tokenizer_.getTokensFromString(Self.subStores, TBasicArrayListD.Create());
            Exit(subStoreVector);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

function TBasicStoreFront.getTagLocation: string;
begin
        Exit(Self.tagLocation);
end;
    

function TBasicStoreFront.getPackageLocation: string;
begin
        Exit(Self.packageLocation);
end;
    

function TBasicStoreFront.getFtp: string;
begin
        Exit(Self.ftp);
end;
    

function TBasicStoreFront.getFtpUserName: string;
begin
        Exit(Self.ftpUserName);
end;
    

function TBasicStoreFront.getFtpPassword: string;
begin
        Exit(Self.ftpPassword);
end;
    

function TBasicStoreFront.getTestFtp: string;
begin
        Exit(Self.testFtp);
end;
    

function TBasicStoreFront.getTestFtpUserName: string;
begin
        Exit(Self.testFtpUserName);
end;
    

function TBasicStoreFront.getTestFtpPassword: string;
begin
        Exit(Self.testFtpPassword);
end;
    

function TBasicStoreFront.getFtpPath: string;
begin
        Exit(Self.ftpPath);
end;
    

function TBasicStoreFront.getTestFtpPath: string;
begin
        Exit(Self.testFtpPath);
end;
    

function TBasicStoreFront.getTimeCreated: string;
begin
        Exit(Self.timeCreated);
end;
    

function TBasicStoreFront.getLastModified: string;
begin
        Exit(Self.lastModified);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

