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
// package views.generic.user
unit UsersView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TUsersView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    userVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayListD, UserDomNode, UsersData, User;


{AB:CODE}

procedure TUsersView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TUsersView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUsersView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TUsersView.toXmlNode(document_: TDocument): TNode;
var
  usersNode: TNode;
  size: Integer;
  userInterface: TUser;
  node_: TNode;
  index: Integer;
begin
        try
            usersNode := document_.createElement(TUsersData.NAME);
            size := Self.userVector.size();
            for index := 0 to size - 1 do begin
                userInterface := TUser(TJava.ToObject(Self.userVector.get(index)));
                if (userInterface) <> (nil) then begin
                    node_ := TUserDomNode.Create(userInterface).toXmlNode(document_);
                    usersNode.appendChild(node_);
                end else begin
                    Self.logUtil.putF('UserHelper', TJava.Box(Self), 'toXmlNode');
                end;
            end;
            Exit(usersNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TUsersView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TUsersView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

