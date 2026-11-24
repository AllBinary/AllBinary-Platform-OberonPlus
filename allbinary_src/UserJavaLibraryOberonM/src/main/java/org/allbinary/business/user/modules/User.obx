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
// package org.allbinary.business.user.modules
unit User;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, UserInterface, UserConfigurationInterface, Password, UserRole, WeblisketSessionInterface, LogUtil, Document, Node;

type
  {AB:TYPES}
  TUser = class(TInterfacedObject, IUserInterface)
  public
    logUtil: TLogUtil;
    userName: string;
    prefixName: string;
    firstName: string;
    lastName: string;
    middleName: string;
    suffixName: string;
    company: string;
    positionAtCompany: string;
    mainEmail: string;
    secondaryEmail: string;
    homePhone: string;
    cellPhone: string;
    workPhone: string;
    otherContact: string;
    electronicDevice: string;
    fax: string;
    role: TUserRole;
    encryption: string;
    secret: string;
    password: TPassword;
    enable_: string;
    permissions: string;
    userConfigurationInterface: IUserConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(userHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure getFormData(userHashMap: TJavaHashMap<TObject, TObject>); virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        procedure setUserName(value: string); virtual;
        procedure setPrefixName(value: string); virtual;
        procedure setFirstName(value: string); virtual;
        procedure setLastName(value: string); virtual;
        procedure setMiddleName(value: string); virtual;
        procedure setSuffixName(value: string); virtual;
        procedure setCompany(value: string); virtual;
        procedure setPositionAtCompany(value: string); virtual;
        procedure setMainEmail(value: string); virtual;
        procedure setSecondaryEmail(value: string); virtual;
        procedure setHomePhone(value: string); virtual;
        procedure setCellPhone(value: string); virtual;
        procedure setWorkPhone(value: string); virtual;
        procedure setOtherContact(value: string); virtual;
        procedure setElectronicContact(value: string); virtual;
        procedure setFax(value: string); virtual;
        procedure setRole(role: TUserRole); virtual;
        procedure setPermissions(value: string); virtual;
        procedure setEncryption(value: string); virtual;
        procedure setSecret(value: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure enable; virtual;
        procedure disable; virtual;
        procedure setEnable(enable: string); virtual;
        function getUserName: string; virtual;
        function getPrefixName: string; virtual;
        function getFirstName: string; virtual;
        function getLastName: string; virtual;
        function getMiddleName: string; virtual;
        function getSuffixName: string; virtual;
        function getCompany: string; virtual;
        function getPositionAtCompany: string; virtual;
        function getMainEmail: string; virtual;
        function getSecondaryEmail: string; virtual;
        function getHomePhone: string; virtual;
        function getCellPhone: string; virtual;
        function getWorkPhone: string; virtual;
        function getOtherContact: string; virtual;
        function getElectronicContact: string; virtual;
        function getFax: string; virtual;
        function getRole: TUserRole; virtual;
        function getPermissions: string; virtual;
        function getEncryption: string; virtual;
        function getSecret: string; virtual;
        function getPassword: string; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toPasswordHashMap: TJavaHashMap<TObject, TObject>; virtual;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        procedure updateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        function isSessionValid: Boolean; virtual;
        function getKey: TObject; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getUserConfigurationInterface: IUserConfigurationInterface; virtual;
        procedure setUserConfigurationInterface(userConfigurationInterface_: IUserConfigurationInterface); virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, EntryData, UserData, UserConfigurationDomDocumentMapping, UserConfigurationInterfaceFactory, UserRoleB, UserRoleData, UserName, StdUtil, RequestParams, WeblisketSessionData, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TUser.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TUser.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUser.Create;
begin
    inherited Create;
    InitFields;
        Self.userConfigurationInterface := TUserConfigurationInterfaceFactory.getInstance();
        Self.password := TPassword.Create(TStringUtil.getInstance().EMPTY_STRING);
end;
    

constructor TUser.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.getFormData(TRequestParams.Create(request).toHashMap());
        Self.userConfigurationInterface := TUserConfigurationInterfaceFactory.getInstance(Self.getRole());
end;
    

constructor TUser.Create(userHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(userHashMap);
        Self.userConfigurationInterface := TUserConfigurationInterfaceFactory.getInstance(Self.getRole());
end;
    

// throws Exception
procedure TUser.getFormData(userHashMap: TJavaHashMap<TObject, TObject>);
var
  stringUtil_: TStringUtil;
  passwordString: string;
  stringValidationUtil_: TObject;
  encryption: string;
  secret: string;
begin
        Self.userName := TUserName.Create(userHashMap).get();
        stringUtil_ := TStringUtil.getInstance();
        passwordString := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.PASSWORD)))));
        stringValidationUtil_ := nil;
        if ((Self.userName = '')) and ((passwordString = '')) then begin
            Self.userName := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TWeblisketSessionData.REMOVABLEUSERNAME)))));
            passwordString := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TWeblisketSessionData.REMOVABLEPASSWORD)))));
        end;
        encryption := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TEntryData.getInstance().ENCRYPTION)))));
        secret := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.SECRET)))));
        Self.password := TPassword.Create(passwordString);
        Self.prefixName := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.PREFIXNAME)))));
        Self.firstName := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.FIRSTNAME)))));
        Self.lastName := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.LASTNAME)))));
        Self.middleName := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.MIDDLENAME)))));
        Self.suffixName := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.SUFFIXNAME)))));
        Self.company := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.COMPANY)))));
        Self.positionAtCompany := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.POSITIONATCOMPANY)))));
        Self.mainEmail := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.MAINEMAIL)))));
        Self.secondaryEmail := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.SECONDARYEMAIL)))));
        Self.homePhone := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.HOMEPHONE)))));
        Self.cellPhone := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.CELLPHONE)))));
        Self.workPhone := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.WORKPHONE)))));
        Self.otherContact := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.OTHERCONTACT)))));
        Self.electronicDevice := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.ELECTRONICDEVICE)))));
        Self.fax := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.FAX)))));
        Self.role := TUserRoleB.getRole(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TJava.ToString(TUserRoleData.NAME))))));
        Self.permissions := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TUserData.PERMISSIONS)))));
        if (not ((Self.permissions = ''))) and ((CompareStr(Self.permissions, TStoreFrontData.getInstance().NAME)) = (0)) then begin
            Self.permissions := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME)))));
        end else if (Self.permissions) = ('') then begin
            Self.permissions := 'No Permissions';
        end;
        Self.enable_ := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(userHashMap.get(TJava.Box(TEntryData.getInstance().ENABLE)))));
end;
    

function TUser.isValid: Boolean;
var
  valid: Boolean;
  stringValidationUtil_: TObject;
  commonStrings_: TCommonStrings;
begin
        try
            valid := True;
            if not (TUserName.getInstance().isValid(Self.userName).booleanValue()) then begin
                valid := False;
            end;
            if not ((Self.password.isValid())) then begin
                valid := False;
            end;
            stringValidationUtil_ := nil;
            if not (stringValidationUtil_.isValidRequired(Self.firstName, 1, TUserData.MAXLEN)) then begin
                valid := False;
            end;
            if not (stringValidationUtil_.isValidRequired(Self.lastName, 1, TUserData.MAXLEN)) then begin
                valid := False;
            end;
            if (not (stringValidationUtil_.isValidRequired(Self.mainEmail, 1, TUserData.MAXLEN))) or (((Pos(TJava.ToString('@'), Self.mainEmail) - 1)) = (-1)) then begin
                valid := False;
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATIONERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), commonStrings_.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TUser.validationInfo: string;
var
  stringValidationUtil_: TObject;
  stringBuffer: TStringMaker;
begin
        try
            stringValidationUtil_ := nil;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TUserName.getValidationInfo(Self.userName));
            stringBuffer.append(Self.password.getValidationInfo());
            if not (stringValidationUtil_.isValidRequired(Self.firstName, 1, TUserData.MAXLEN)) then begin
                stringBuffer.append('Please enter a valid First Name.<br />');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.lastName, 1, TUserData.MAXLEN)) then begin
                stringBuffer.append('Please enter a valid Last Name.<br />');
            end;
            if (not (stringValidationUtil_.isValidRequired(Self.mainEmail, 1, TUserData.MAXLEN))) or (((Pos(TJava.ToString('@'), Self.mainEmail) - 1)) = (-1)) then begin
                stringBuffer.append('Please enter a valid email address.<br />');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

procedure TUser.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TUser.setPrefixName(value: string);
begin
        Self.prefixName := value;
end;
    

procedure TUser.setFirstName(value: string);
begin
        Self.firstName := value;
end;
    

procedure TUser.setLastName(value: string);
begin
        Self.lastName := value;
end;
    

procedure TUser.setMiddleName(value: string);
begin
        Self.middleName := value;
end;
    

procedure TUser.setSuffixName(value: string);
begin
        Self.suffixName := value;
end;
    

procedure TUser.setCompany(value: string);
begin
        Self.company := value;
end;
    

procedure TUser.setPositionAtCompany(value: string);
begin
        Self.positionAtCompany := value;
end;
    

procedure TUser.setMainEmail(value: string);
begin
        Self.mainEmail := value;
end;
    

procedure TUser.setSecondaryEmail(value: string);
begin
        Self.secondaryEmail := value;
end;
    

procedure TUser.setHomePhone(value: string);
begin
        Self.homePhone := value;
end;
    

procedure TUser.setCellPhone(value: string);
begin
        Self.cellPhone := value;
end;
    

procedure TUser.setWorkPhone(value: string);
begin
        Self.workPhone := value;
end;
    

procedure TUser.setOtherContact(value: string);
begin
        Self.otherContact := value;
end;
    

procedure TUser.setElectronicContact(value: string);
begin
        Self.electronicDevice := value;
end;
    

procedure TUser.setFax(value: string);
begin
        Self.fax := value;
end;
    

procedure TUser.setRole(role: TUserRole);
begin
        Self.role := role;
end;
    

procedure TUser.setPermissions(value: string);
begin
        Self.permissions := value;
end;
    

procedure TUser.setEncryption(value: string);
begin
        Self.encryption := value;
end;
    

procedure TUser.setSecret(value: string);
begin
        Self.secret := value;
end;
    

procedure TUser.setPassword(value: string);
begin
        Self.password.set_(value);
end;
    

procedure TUser.enable;
begin
        Self.setEnable('Yes');
end;
    

procedure TUser.disable;
begin
        Self.setEnable('No');
end;
    

procedure TUser.setEnable(enable: string);
begin
        Self.enable_ := enable;
end;
    

function TUser.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TUser.getPrefixName: string;
begin
        Exit(Self.prefixName);
end;
    

function TUser.getFirstName: string;
begin
        Exit(Self.firstName);
end;
    

function TUser.getLastName: string;
begin
        Exit(Self.lastName);
end;
    

function TUser.getMiddleName: string;
begin
        Exit(Self.middleName);
end;
    

function TUser.getSuffixName: string;
begin
        Exit(Self.suffixName);
end;
    

function TUser.getCompany: string;
begin
        Exit(Self.company);
end;
    

function TUser.getPositionAtCompany: string;
begin
        Exit(Self.positionAtCompany);
end;
    

function TUser.getMainEmail: string;
begin
        Exit(Self.mainEmail);
end;
    

function TUser.getSecondaryEmail: string;
begin
        Exit(Self.secondaryEmail);
end;
    

function TUser.getHomePhone: string;
begin
        Exit(Self.homePhone);
end;
    

function TUser.getCellPhone: string;
begin
        Exit(Self.cellPhone);
end;
    

function TUser.getWorkPhone: string;
begin
        Exit(Self.workPhone);
end;
    

function TUser.getOtherContact: string;
begin
        Exit(Self.otherContact);
end;
    

function TUser.getElectronicContact: string;
begin
        Exit(Self.electronicDevice);
end;
    

function TUser.getFax: string;
begin
        Exit(Self.fax);
end;
    

function TUser.getRole: TUserRole;
begin
        Exit(Self.role);
end;
    

function TUser.getPermissions: string;
begin
        Exit(Self.permissions);
end;
    

function TUser.getEncryption: string;
begin
        Exit(Self.encryption);
end;
    

function TUser.getSecret: string;
begin
        Exit(Self.secret);
end;
    

function TUser.getPassword: string;
begin
        Exit(Self.password.get());
end;
    

// throws Exception
function TUser.toVector: TBasicArrayList;
var
  values: TBasicArrayList;
  userConfigurationDomDocumentMapping_: TUserConfigurationDomDocumentMapping;
  calendar: TCalendar;
  time: string;
begin
        values := TBasicArrayListD.Create();
        values.add(TJava.Box(Self.userName));
        values.add(TJava.Box(Self.prefixName));
        values.add(TJava.Box(Self.firstName));
        values.add(TJava.Box(Self.lastName));
        values.add(TJava.Box(Self.middleName));
        values.add(TJava.Box(Self.suffixName));
        values.add(TJava.Box(Self.company));
        values.add(TJava.Box(Self.positionAtCompany));
        values.add(TJava.Box(Self.mainEmail));
        values.add(TJava.Box(Self.secondaryEmail));
        values.add(TJava.Box(Self.homePhone));
        values.add(TJava.Box(Self.cellPhone));
        values.add(TJava.Box(Self.workPhone));
        values.add(TJava.Box(Self.otherContact));
        values.add(TJava.Box(Self.electronicDevice));
        values.add(TJava.Box(Self.fax));
        values.add(TJava.Box(Self.getRole().toString()));
        userConfigurationDomDocumentMapping_ := TUserConfigurationDomDocumentMapping.Create(Self.getUserConfigurationInterface());
        values.add(TJava.Box(userConfigurationDomDocumentMapping_.toDomDocumentString()));
        values.add(TJava.Box(Self.permissions));
        values.addAllList(Self.password.toVector(Self.secret));
        values.add(TJava.Box(Self.enable_));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.add(TJava.Box(time));
        values.add(TJava.Box(time));
        Exit(values);
end;
    

// throws Exception
function TUser.toHashMap: TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  userConfigurationDomDocumentMapping_: TUserConfigurationDomDocumentMapping;
  calendar: TCalendar;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
        values.put(TJava.Box(TUserData.PREFIXNAME), TJava.Box(Self.prefixName));
        values.put(TJava.Box(TUserData.FIRSTNAME), TJava.Box(Self.firstName));
        values.put(TJava.Box(TUserData.LASTNAME), TJava.Box(Self.lastName));
        values.put(TJava.Box(TUserData.MIDDLENAME), TJava.Box(Self.middleName));
        values.put(TJava.Box(TUserData.SUFFIXNAME), TJava.Box(Self.suffixName));
        values.put(TJava.Box(TUserData.COMPANY), TJava.Box(Self.company));
        values.put(TJava.Box(TUserData.POSITIONATCOMPANY), TJava.Box(Self.positionAtCompany));
        values.put(TJava.Box(TUserData.MAINEMAIL), TJava.Box(Self.mainEmail));
        values.put(TJava.Box(TUserData.SECONDARYEMAIL), TJava.Box(Self.secondaryEmail));
        values.put(TJava.Box(TUserData.HOMEPHONE), TJava.Box(Self.homePhone));
        values.put(TJava.Box(TUserData.CELLPHONE), TJava.Box(Self.cellPhone));
        values.put(TJava.Box(TUserData.WORKPHONE), TJava.Box(Self.workPhone));
        values.put(TJava.Box(TUserData.OTHERCONTACT), TJava.Box(Self.otherContact));
        values.put(TJava.Box(TUserData.ELECTRONICDEVICE), TJava.Box(Self.electronicDevice));
        values.put(TJava.Box(TUserData.FAX), TJava.Box(Self.fax));
        if (Self.getRole()) <> (nil) then begin
            values.put(TJava.Box(TJava.ToString(TUserRoleData.NAME)), TJava.Box(Self.getRole().toString()));
        end;
        userConfigurationDomDocumentMapping_ := TUserConfigurationDomDocumentMapping.Create(Self.getUserConfigurationInterface());
        values.put(TJava.Box(TUserData.CONFIGURATION), TJava.Box(userConfigurationDomDocumentMapping_.toDomDocumentString()));
        values.put(TJava.Box(TUserData.PERMISSIONS), TJava.Box(Self.permissions));
        values.putAll(Self.password.toHashMap(Self.secret));
        values.put(TJava.Box(TEntryData.getInstance().ENABLE), TJava.Box(Self.enable_));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

function TUser.toPasswordHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.password.toHashMap(Self.secret));
end;
    

procedure TUser.validateSession(weblisketSession: IWeblisketSessionInterface);
begin
        weblisketSession.setAuthenticated();
        weblisketSession.setRole(Self.getRole());
        weblisketSession.setUserName(Self.getUserName());
end;
    

procedure TUser.updateSession(weblisketSession: IWeblisketSessionInterface);
begin
end;
    

function TUser.isSessionValid: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
function TUser.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.userName)));
end;
    

function TUser.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUser.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TUser.getUserConfigurationInterface: IUserConfigurationInterface;
begin
        Exit(Self.userConfigurationInterface);
end;
    

procedure TUser.setUserConfigurationInterface(userConfigurationInterface_: IUserConfigurationInterface);
begin
        Self.userConfigurationInterface := userConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

