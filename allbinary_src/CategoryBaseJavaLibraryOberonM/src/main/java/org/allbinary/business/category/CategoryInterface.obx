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
// package org.allbinary.business.category
unit CategoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CategoryHierarchyInterface, CategoryPropertiesInterface, TableMappingInterface, ValidationInterface, AbPath;

type
  {AB:TYPES}
  ICategoryInterface = interface(ITableMappingInterface) ['ICategoryInterface']
        function getChildNodes: TBasicArrayList;
        function addChildProperty(categoryPropertiesInterface_: ICategoryPropertiesInterface): Boolean;
        function addChild(categoryInterface_: ICategoryInterface): Boolean;
        function removeChild(categoryInterface_: ICategoryInterface): Boolean;
        function isLeaf: Boolean;
        function getProperties: ICategoryPropertiesInterface;
        procedure setProperties(categoryPropertiesInterface_: ICategoryPropertiesInterface);
        function getHierarchy: ICategoryHierarchyInterface;
        procedure setHierarchy(categoryHierarchyInterface_: ICategoryHierarchyInterface);
        function getPath: TAbPath;
        function getFilePath: TAbPath;
        function getWebAppPath: TAbPath;
        function getRootFilePath: TAbPath;
        procedure log;
  end;
  TCategoryInterface = ICategoryInterface;

implementation
uses
  BasicArrayListD;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

