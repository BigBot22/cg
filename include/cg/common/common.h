#pragma once

namespace cg {

   template < class T>
   bool make_min (T& to_min , T min)
   {
      if(to_min > min)
      {
         to_min = min;
         return true;
      }
      return false;
   }

   template < class T>
   bool make_max(T& to_max, T max)
   {
      if(to_max < max)
      {
         to_max = max;
         return true;
      }
      return false;
   }
}
