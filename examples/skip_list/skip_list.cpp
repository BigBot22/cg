#include <cg/common/skip_list.h>

int main() {

   SkipSet<int> ss;
   ss.print();

   ss.insert(5);
   ss.insert(10);
   ss.insert(7);
   ss.insert(7);
   ss.insert(6);

   if (ss.contains(7)) {
      cout << "7 is in the list\n";
   }

   ss.print();

   ss.erase(7);
   ss.print();

   if (!ss.contains(7)) {
      cout << "7 has been deleted\n";
   }

   cout << "8 added\n";
   ss.insert(8);
   ss.print();

   return 0;
}
