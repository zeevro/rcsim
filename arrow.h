#ifndef __ARROW_H__
#define __ARROW_H__

#include <raylib.hpp>

typedef irr::core::vector3df raylib::Vector3;

class Arrow {
public:
  Arrow(irr::scene::ISceneManager *smgr,
        irr::scene::ISceneNode *parent = nullptr);

  void point(const raylib::Vector3 &at);

private:
  irr::scene::ISceneNode *m_node;
};

#endif // __ARROW_H__
