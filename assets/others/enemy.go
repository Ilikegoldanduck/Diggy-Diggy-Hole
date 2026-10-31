components {
  id: "enemy"
  component: "/assets/scripts/enemy.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"monsters\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/imgbin/sprites.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -8.0
    y: 16.0
  }
}
