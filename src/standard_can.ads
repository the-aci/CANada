with Interfaces;

package Standard_CAN
is
   subtype Rng_Last is Integer range -1 .. 7;
--   for  Rng_Last'Size use 8;

   Empty_Message : constant Rng_Last := -1;

   type Rng_Id is range 2#000_000_0000# .. 2#000_0000_0000#;

   subtype Rng_Octet is Interfaces.Unsigned_8;

   type Arr_Payload
     is array (Rng_Last range 0 .. Rng_Last'Last)
     of Rng_Octet;
   for Arr_Payload'Size use 8 * 8;

   type Typ_Message (Last : Rng_Last)
   is record
      Id      : Rng_Id;
      Payload : Arr_Payload;

   end record;

end Standard_CAN;
