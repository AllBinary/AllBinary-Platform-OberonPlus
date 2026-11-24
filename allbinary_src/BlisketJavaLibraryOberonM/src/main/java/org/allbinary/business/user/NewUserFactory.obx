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
// package org.allbinary.business.user
unit NewUserFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInfoInterface, UserInterface;

type
  {AB:TYPES}
  TNewUserFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: IUserInterface; overload; static;
        class function getInstance(transformInfoInterface_: ITransformInfoInterface): IUserInterface; overload; static;
        class function getInstance(httpServletRequest_: THttpServletRequest; propertiesHashMap: TJavaHashMap<TObject, TObject>): IUserInterface; overload; static;
  end;

implementation
uses
  CreateUserFactory, User, UserRoleData, RequestParams, TransformInfoHttpInterface;


{AB:CODE}
    

constructor TNewUserFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TNewUserFactory.getInstance: IUserInterface;
begin
        Exit(TUser.Create());
end;
    

// throws Exception
class function TNewUserFactory.getInstance(transformInfoInterface_: ITransformInfoInterface): IUserInterface;
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  httpServletRequest_: THttpServletRequest;
  hashMap_: TJavaHashMap<TObject, TObject>;
  role: string;
begin
        httpTransformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
        httpServletRequest_ := THttpServletRequest(TJava.ToObject(httpTransformInfoInterface.getPageContext().getRequest()));
        hashMap_ := TRequestParams.Create(httpServletRequest_).toHashMap();
        role := TJava.UnboxString(TJava.ToObject(httpTransformInfoInterface.getPropertiesHashMap().get(TJava.ToString(TUserRoleData.NAME))));
        hashMap_.put(TJava.Box(TJava.ToString(TUserRoleData.NAME)), TJava.Box(role));
        Exit(TCreateUserFactory.getInstance(hashMap_));
end;
    

// throws Exception
class function TNewUserFactory.getInstance(httpServletRequest_: THttpServletRequest; propertiesHashMap: TJavaHashMap<TObject, TObject>): IUserInterface;
var
  requestHashMap: TJavaHashMap<TObject, TObject>;
  roleString: string;
begin
        if (propertiesHashMap) <> (nil) then begin
            requestHashMap := TRequestParams.Create(httpServletRequest_).toHashMap();
            roleString := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TJava.ToString(TUserRoleData.NAME)))));
            requestHashMap.put(TJava.Box(TJava.ToString(TUserRoleData.NAME)), TJava.Box(roleString));
            Exit(TCreateUserFactory.getInstance(requestHashMap));
        end else begin
            raise SysUtils.Exception.Create('Null HashMap');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

