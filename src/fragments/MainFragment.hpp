#ifndef MAINFRAGMENT_HPP
#define MAINFRAGMENT_HPP

#include "Fragment.hpp"
#include "Fragments.hpp"

class MainFragment: public Fragment{
public:
    MainFragment(): Fragment(Fragments::MAIN){};

    // void onAnyMess

    ~MainFragment(){
        Fragment::~Fragment();
    };
};

#endif