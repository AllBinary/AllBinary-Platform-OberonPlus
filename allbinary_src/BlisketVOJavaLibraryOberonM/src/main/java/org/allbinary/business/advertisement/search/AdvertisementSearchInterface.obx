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
// package org.allbinary.business.advertisement.search
unit AdvertisementSearchInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdvertisementCategoryInterface, AdvertisementWebsiteInterface, PriceConstraintInterface, TwoDimensionalConstraintInterface;

type
  {AB:TYPES}
  IAdvertisementSearchInterface = interface(IJavaObject) ['IAdvertisementSearchInterface']
        function getWebSite: IAdvertisementWebsiteInterface;
        function getCategory: IAdvertisementCategoryInterface;
        function getSizeConstraints: ITwoDimensionalConstraintInterface;
        function getPricingConstraints: IPriceConstraintInterface;
        function getPageNumber: Integer;
        function getProductsPerPage: Integer;
        function getSearchParams: TJavaHashMap<TObject, TObject>;
        procedure setCategory(advertisementCategoryInterface_: IAdvertisementCategoryInterface);
        procedure setSizeConstraints(twoDimensionConstraintsInterface: ITwoDimensionalConstraintInterface);
        procedure setPricingConstraints(priceConstraintInterface_: IPriceConstraintInterface);
        procedure setPageNumber(pageNumber: Integer);
        procedure setProductsPerPage(productsPerPage: Integer);
        procedure setSearchParams(columnAndKeywordHashMap: TJavaHashMap<TObject, TObject>);
  end;
  TAdvertisementSearchInterface = IAdvertisementSearchInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

