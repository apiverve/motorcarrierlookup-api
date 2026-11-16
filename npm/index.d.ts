declare module '@apiverve/motorcarrierlookup' {
  export interface motorcarrierlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface motorcarrierlookupResponse {
    status: string;
    error: string | null;
    data: MotorCarrierLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MotorCarrierLookupData {
      dotNumber:                number | null;
      legalName:                null | string;
      dbaName:                  null | string;
      status:                   null | string;
      entityTypes:              (null | string)[];
      operation:                null | string;
      operationClassifications: (null | string)[];
      businessType:             null | string;
      registrationDate:         Date | null;
      physicalAddress:          Address;
      mailingAddress:           Address;
      phone:                    null | string;
      fax:                      null | string;
      email:                    null | string;
      dockets:                  Docket[];
      fleet:                    Fleet;
      hazmat:                   boolean | null;
      mcs150:                   Mcs150;
      safety:                   Safety;
      outOfService:             boolean | null;
      outOfServiceOrders:       any[];
      cargoClasses:             (null | string)[];
      equipment:                Equipment;
      dunsNumber:               null | string;
      priorRevocation:          null;
      authority:                Authority;
      insurance:                Insurance;
      dataAsOf:                 DataAsOf;
  }
  
  interface Authority {
      common:             null | string;
      contract:           null | string;
      broker:             null | string;
      applicationPending: CationPending;
      revocationPending:  CationPending;
      authorizedFor:      AuthorizedFor;
      firstGrantedDate:   Date | null;
      authorityAgeDays:   number | null;
  }
  
  interface CationPending {
      common:   boolean | null;
      contract: boolean | null;
      broker:   boolean | null;
  }
  
  interface AuthorizedFor {
      property:       boolean | null;
      passengers:     boolean | null;
      householdGoods: boolean | null;
      private:        boolean | null;
      enterprise:     boolean | null;
  }
  
  interface DataAsOf {
      census:       Date | null;
      licensing:    Date | null;
      outOfService: Date | null;
  }
  
  interface Docket {
      docket: null | string;
      prefix: null | string;
      status: null | string;
  }
  
  interface Equipment {
      straightTrucks: StraightTrucks;
      tractors:       StraightTrucks;
      trailers:       StraightTrucks;
  }
  
  interface StraightTrucks {
      owned:      number | null;
      termLeased: number | null;
      tripLeased: number | null;
  }
  
  interface Fleet {
      powerUnits:        number | null;
      trucks:            number | null;
      buses:             number | null;
      drivers:           number | null;
      cdlDrivers:        number | null;
      interstateDrivers: number | null;
      intrastateDrivers: number | null;
      sizeBand:          null | string;
  }
  
  interface Insurance {
      bipdRequiredUsd:      number | null;
      bipdOnFileUsd:        number | null;
      cargoRequired:        boolean | null;
      cargoOnFile:          boolean | null;
      cargoCoverageUsd:     null;
      bondRequired:         boolean | null;
      bondOnFile:           boolean | null;
      pendingCancellation:  boolean | null;
      nextCancellationDate: null;
      policies:             Policy[];
  }
  
  interface Policy {
      type:               null | string;
      form:               null | string;
      insurer:            null | string;
      policyNumber:       null | string;
      postedDate:         Date | null;
      effectiveDate:      Date | null;
      cancellationDate:   null;
      coverageUsd:        number | null;
      underlyingLimitUsd: number | null;
  }
  
  interface Address {
      street:  null | string;
      city:    null | string;
      state:   null | string;
      zip:     null | string;
      country: null | string;
  }
  
  interface Mcs150 {
      date:        Date | null;
      ageDays:     number | null;
      mileage:     number | null;
      mileageYear: number | null;
  }
  
  interface Safety {
      rating:              null | string;
      ratingDate:          Date | null;
      reviewType:          null | string;
      reviewDate:          Date | null;
      recordableCrashRate: null;
  }

  export default class motorcarrierlookupWrapper {
    constructor(options: motorcarrierlookupOptions);

    execute(callback: (error: any, data: motorcarrierlookupResponse | null) => void): Promise<motorcarrierlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: motorcarrierlookupResponse | null) => void): Promise<motorcarrierlookupResponse>;
    execute(query?: Record<string, any>): Promise<motorcarrierlookupResponse>;
  }
}
