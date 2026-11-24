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
// package admin.taghelpers
unit CategoryRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryInterface, CategoryLoaderInterface, LogUtil, TransformInfoInterface, Node, ModifyTable;

type
  {AB:TYPES}
  TCategoryRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    pageContext: TPageContext;
    hashMap: TJavaHashMap<TObject, TObject>;
    request: THttpServletRequest;
    categoryLoaderInterface: ICategoryLoaderInterface;
    categoryInterface: ICategoryInterface;
    childCategoryInterface: ICategoryInterface;
    transformInfoInterface: ITransformInfoInterface;
    class var categoryRequest: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getXmlData; virtual;
        procedure setCategoryLoader(requestNode: TNode);
        function insert: string; virtual;
        function delete_: string; virtual;
        function viewCategory: string; virtual;
        function viewCategories: string; virtual;
        function update: string; virtual;
  end;

implementation
uses
  CategoryComponent, CategoryData, StoreCategoryFactory, StoreFrontData, StoreFrontFactory, StoreFrontInterface, CategoryLoaderFactory, DomNodeHelper, DomSearchHelper, DomDocumentHelper, XmlDocumentHelper, StringMaker, StringUtil, TransformInfoBasic, Document;


{AB:CODE}

procedure TCategoryRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
end;
    

constructor TCategoryRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        try
            Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
            Self.pageContext := pageContext_;
            Self.hashMap := hashMap_;
            Self.getXmlData();
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'CategoryRequestHelper()', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TCategoryRequestHelper.getXmlData;
var
  map: IMap;
  categoryData_: TCategoryData;
  keys: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  xmlRequest: string;
  index: Integer;
  document_: TDocument;
  requestNode: TNode;
  parentCategoryNode: TNode;
  categoryNode: TNode;
  childCategoryNode: TNode;
begin
        try
            map := Self.request.getParameterMap();
            categoryData_ := TCategoryData.getInstance();
            keys := map.keySet();
            keyArray := keys.toArray();
            size := System.Length(keyArray);
            if (size) > (0) then begin
                xmlRequest := TJava.UnboxString(TJava.ToObject(keyArray[0]));
                index := 1;
                while ((index) < (size)) and (not (xmlRequest.StartsWith(TCategoryRequestHelper.categoryRequest))) do begin
                    xmlRequest := TJava.UnboxString(TJava.ToObject(keyArray[index]));
                    if xmlRequest.StartsWith(TCategoryRequestHelper.categoryRequest) then begin
                        Break;
                    end;
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.logUtil.putF(xmlRequest, TJava.Box(Self), 'getXmlData()');
                end;
                document_ := TDomDocumentHelper.create_(xmlRequest);
                requestNode := TDomSearchHelper.getNode(categoryData_.REQUEST, document_.getChildNodes());
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.logUtil.putF(TXmlDocumentHelper.toString(document_), TJava.Box(Self), 'getXmlData()');
                end;
                Self.setCategoryLoader(requestNode);
                parentCategoryNode := TDomSearchHelper.getNode(categoryData_.PARENT, requestNode.getChildNodes());
                categoryNode := TDomSearchHelper.getNode(categoryData_.NAME, parentCategoryNode.getChildNodes());
                Self.categoryInterface := (TJava.ToObject(TStoreCategoryFactory.Create(Self.transformInfoInterface).getRootInstanceFromNode(categoryNode)) as ICategoryInterface);
                Self.categoryInterface := Self.categoryLoaderInterface.get(Self.categoryInterface);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.categoryInterface.log();
                    Self.logUtil.putF('Loaded Parent Category', TJava.Box(Self), 'getXmlData()');
                end;
                childCategoryNode := TDomSearchHelper.getNodeNoThrow(categoryData_.NAME, requestNode.getChildNodes());
                if (childCategoryNode) <> (nil) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                        Self.logUtil.putF('Loading Child Category', TJava.Box(Self), 'getXmlData()');
                    end;
                    Self.childCategoryInterface := (TJava.ToObject(TStoreCategoryFactory.Create(Self.transformInfoInterface).getInstance(childCategoryNode)) as ICategoryInterface);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                        Self.childCategoryInterface.log();
                        Self.logUtil.putF('Loaded Child Category', TJava.Box(Self), 'getXmlData()');
                    end;
                end else begin
                    Self.childCategoryInterface := Self.categoryInterface;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getXmlData()', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TCategoryRequestHelper.setCategoryLoader(requestNode: TNode);
var
  storeNameNode: TNode;
  storeName: string;
  storeFrontInterface_: IStoreFrontInterface;
  storeCategoryFactory_: TStoreCategoryFactory;
begin
        storeNameNode := TDomSearchHelper.getNode(TStoreFrontData.getInstance().NAME, requestNode.getChildNodes());
        if (storeNameNode) <> (nil) then begin
            storeName := TDomNodeHelper.getTextNodeValue(storeNameNode);
            if (storeName) <> ('') then begin
                storeFrontInterface_ := TStoreFrontFactory.getInstance(storeName);
                Self.transformInfoInterface := (TJava.ToObject(TTransformInfoBasic.Create(storeFrontInterface_, Self.hashMap, Self.pageContext)) as ITransformInfoInterface);
                if (Self.transformInfoInterface) = (nil) then begin
                    raise SysUtils.Exception.Create('TransformInfo null');
                end;
                storeCategoryFactory_ := TStoreCategoryFactory.Create(Self.transformInfoInterface);
                Self.categoryLoaderInterface := TCategoryLoaderFactory.getInstance(storeCategoryFactory_);
            end else begin
                raise SysUtils.Exception.Create('Store Name Error: ' + storeName);
            end;
        end;
end;
    

function TCategoryRequestHelper.insert: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully Added the following to the Category table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('inserting', TJava.Box(Self), 'insert()');
            end;
            Self.categoryLoaderInterface.insert(Self.categoryInterface, Self.childCategoryInterface);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add item to Category';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TCategoryRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully Removed ' + TJava.ToString(TCategoryData.getInstance().NAME) + '=' + TJava.ToString(Self.childCategoryInterface.getPath());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Deleting', TJava.Box(Self), 'delete()');
            end;
            Self.categoryLoaderInterface.delete_(Self.categoryInterface, Self.childCategoryInterface);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            try
                error := 'Failed to remove category: ' + TJava.ToString(Self.childCategoryInterface.getPath());
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                    Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
                end;
                Exit(error);
            except
                on e2: SysUtils.Exception do begin
                error := 'Failed to remove category and show the path of the failed category';
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                    Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e2));
                end;
                Exit(error);
                end;
            end;
            end;
        end;
end;
    

function TCategoryRequestHelper.viewCategory: string;
var
  document_: TDocument;
  xmlString: string;
  error: string;
begin
        try
            document_ := TCategoryComponent.Create(Self.childCategoryInterface).toXmlDoc();
            xmlString := TXmlDocumentHelper.toString(document_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(xmlString, TJava.Box(Self), 'viewCategory()');
            end;
            Exit(xmlString);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to get Category';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'viewCategory()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TCategoryRequestHelper.viewCategories: string;
var
  success: string;
  error: string;
begin
        try
            success := TStringUtil.getInstance().EMPTY_STRING;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'viewCategories()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view Categories table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'viewCategories()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TCategoryRequestHelper.update: string;
var
  success: string;
  error: string;
begin
        try
            success := 'New Item Successfully added';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add Item';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCategoryRequestHelper.categoryRequest := TStringMaker.Create().append('<').append(TCategoryData.getInstance().REQUEST).append('>').toString();
  {AB:END}

end.

