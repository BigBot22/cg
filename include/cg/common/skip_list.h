#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <cstring>

using namespace std;
const float P = 0.5;
const int MAX_LEVEL = 6;

template <class T>
struct SkipNode {

    T value;
    SkipNode<T> **forward; // array of pointers

    SkipNode(int level, const T &value)
    {
        forward = new SkipNode<T> * [level + 1];
        memset(forward, 0, sizeof(SkipNode<T>*)*(level + 1));
        this->value = value;
    }

    ~SkipNode()
    {
        delete [] forward;
    }
};


template <class T>
struct SkipSet {
    SkipNode<T> *header;
    int level;

    SkipSet() {
        header = new SkipNode<T>(MAX_LEVEL, T());
        level = 0;
    }
    ~SkipSet() {
        delete header;
    }
    void print() const;
    bool contains(const T &) const;
    void insert(const T &);
    void erase(const T &);
};

float frand() {
    return (float) rand() / RAND_MAX;
}
int random_level() {
    static bool first = true;

    if (first) {
        srand( (unsigned)time( NULL ) );
        first = false;
    }

    int lvl = (int)(log(frand()) / log(1.- P));
    return lvl < MAX_LEVEL ? lvl : MAX_LEVEL;
}

template <class T>
void SkipSet<T>::print() const {
    const SkipNode<T> *x = header->forward[0];
    cout << "{";
    while (x != NULL) {
        cout << x->value;
        x = x->forward[0];
        if (x != NULL)
            cout << ",";
    }
    cout << "}\n";
}

template <class T>
bool SkipSet<T>::contains(const T &search_value) const {
    const SkipNode<T> *x = header;
    for (int i = level; i >= 0; i--) {
        while (x->forward[i] != NULL && x->forward[i]->value < search_value) {
            x = x->forward[i];
        }
    }
    x = x->forward[0];
    return x != NULL && x->value == search_value;
}

template <class T>
void SkipSet<T>::insert(const T &value) {
   SkipNode<T> *x = header;
   SkipNode<T> *update[MAX_LEVEL + 1];

   memset(update, 0, sizeof(SkipNode<T>*)*(MAX_LEVEL + 1));

   for (int i = level; i >= 0; i--) {
      while (x->forward[i] != NULL && x->forward[i]->value < value) {
         x = x->forward[i];
      }
      update[i] = x;
   }

   x = x->forward[0];

   if (x == NULL || x->value != value) {
      int lvl = random_level();

      if (lvl > level) {
         for (int i = level + 1; i <= lvl; i++) {
            update[i] = header;
         }
         level = lvl;
      }

      x = new SkipNode<T>(lvl, value);
      for (int i = 0; i <= lvl; i++) {
         x->forward[i] = update[i]->forward[i];
         update[i]->forward[i] = x;
      }
   }
}

template <class T>
void SkipSet<T>::erase(const T &value) {
   SkipNode<T> *x = header;
   SkipNode<T> *update[MAX_LEVEL + 1];
   memset(update, 0, sizeof(SkipNode<T>*)*(MAX_LEVEL + 1));

   for (int i = level; i >= 0; i--) {
      while (x->forward[i] != NULL && x->forward[i]->value < value) {
         x = x->forward[i];
      }
      update[i] = x;
   }
   x = x->forward[0];

   if (x->value == value) {
      for (int i = 0; i <= level; i++) {
         if (update[i]->forward[i] != x)
            break;
         update[i]->forward[i] = x->forward[i];
      }

      delete x;
      while (level > 0 && header->forward[level] == NULL) {
         level--;
      }
   }
}
