#include "Tetris.hpp"
#include "HandleError.hpp"
#include "./objects/Text.hpp"
#include "./String_utils.hpp"
#include <ctime>

#include "HandleSDL.hpp"

Tetris::Tetris() : myGLWidget(Vector3D(), Rotation()), m_level(1), m_elapsed(0.f), m_hasNew(false),
  m_lines(0), m_end(false)
{
  m_render2D = true;

  memcpy(m_pieces[0].rot[0][0], "11  ", 4);
  memcpy(m_pieces[0].rot[0][1], "11  ", 4);
  memcpy(m_pieces[0].rot[0][2], "    ", 4);
  memcpy(m_pieces[0].rot[0][3], "    ", 4);
  memcpy(m_pieces[0].rot[1][0], "11  ", 4);
  memcpy(m_pieces[0].rot[1][1], "11  ", 4);
  memcpy(m_pieces[0].rot[1][2], "    ", 4);
  memcpy(m_pieces[0].rot[1][3], "    ", 4);
  memcpy(m_pieces[0].rot[2][0], "11  ", 4);
  memcpy(m_pieces[0].rot[2][1], "11  ", 4);
  memcpy(m_pieces[0].rot[2][2], "    ", 4);
  memcpy(m_pieces[0].rot[2][3], "    ", 4);
  memcpy(m_pieces[0].rot[3][0], "11  ", 4);
  memcpy(m_pieces[0].rot[3][1], "11  ", 4);
  memcpy(m_pieces[0].rot[3][2], "    ", 4);
  memcpy(m_pieces[0].rot[3][3], "    ", 4);
  m_pieces[0].color = BLUE;
  m_pieces[0].tex_coord[0] = 0.f;
  m_pieces[0].tex_coord[1] = 1.f / 8.f;

  memcpy(m_pieces[1].rot[0][0], " 2  ", 4);
  memcpy(m_pieces[1].rot[0][1], " 2  ", 4);
  memcpy(m_pieces[1].rot[0][2], " 2  ", 4);
  memcpy(m_pieces[1].rot[0][3], " 2  ", 4);
  memcpy(m_pieces[1].rot[1][0], "2222", 4);
  memcpy(m_pieces[1].rot[1][1], "    ", 4);
  memcpy(m_pieces[1].rot[1][2], "    ", 4);
  memcpy(m_pieces[1].rot[1][3], "    ", 4);
  memcpy(m_pieces[1].rot[2][0], " 2  ", 4);
  memcpy(m_pieces[1].rot[2][1], " 2  ", 4);
  memcpy(m_pieces[1].rot[2][2], " 2  ", 4);
  memcpy(m_pieces[1].rot[2][3], " 2  ", 4);
  memcpy(m_pieces[1].rot[3][0], "2222", 4);
  memcpy(m_pieces[1].rot[3][1], "    ", 4);
  memcpy(m_pieces[1].rot[3][2], "    ", 4);
  memcpy(m_pieces[1].rot[3][3], "    ", 4);
  m_pieces[1].color = RED;
  m_pieces[1].tex_coord[0] = 1.f / 8.f;
  m_pieces[1].tex_coord[1] = 1.f / 8.f * 2.f;

  memcpy(m_pieces[2].rot[0][0], " 3  ", 4);
  memcpy(m_pieces[2].rot[0][1], "333 ", 4);
  memcpy(m_pieces[2].rot[0][2], "    ", 4);
  memcpy(m_pieces[2].rot[0][3], "    ", 4);
  memcpy(m_pieces[2].rot[1][0], " 3  ", 4);
  memcpy(m_pieces[2].rot[1][1], " 33 ", 4);
  memcpy(m_pieces[2].rot[1][2], " 3  ", 4);
  memcpy(m_pieces[2].rot[1][3], "    ", 4);
  memcpy(m_pieces[2].rot[2][0], "333 ", 4);
  memcpy(m_pieces[2].rot[2][1], " 3  ", 4);
  memcpy(m_pieces[2].rot[2][2], "    ", 4);
  memcpy(m_pieces[2].rot[2][3], "    ", 4);
  memcpy(m_pieces[2].rot[3][0], " 3  ", 4);
  memcpy(m_pieces[2].rot[3][1], "33  ", 4);
  memcpy(m_pieces[2].rot[3][2], " 3  ", 4);
  memcpy(m_pieces[2].rot[3][3], "    ", 4);
  m_pieces[2].color = WHITE;
  m_pieces[2].tex_coord[0] = 1.f / 8.f * 2.f;
  m_pieces[2].tex_coord[1] = 1.f / 8.f * 3.f;

  memcpy(m_pieces[3].rot[0][0], " 44 ", 4);
  memcpy(m_pieces[3].rot[0][1], "44  ", 4);
  memcpy(m_pieces[3].rot[0][2], "    ", 4);
  memcpy(m_pieces[3].rot[0][3], "    ", 4);
  memcpy(m_pieces[3].rot[1][0], " 4  ", 4);
  memcpy(m_pieces[3].rot[1][1], " 44 ", 4);
  memcpy(m_pieces[3].rot[1][2], "  4 ", 4);
  memcpy(m_pieces[3].rot[1][3], "    ", 4);
  memcpy(m_pieces[3].rot[2][0], " 44 ", 4);
  memcpy(m_pieces[3].rot[2][1], "44  ", 4);
  memcpy(m_pieces[3].rot[2][2], "    ", 4);
  memcpy(m_pieces[3].rot[2][3], "    ", 4);
  memcpy(m_pieces[3].rot[3][0], " 4  ", 4);
  memcpy(m_pieces[3].rot[3][1], " 44 ", 4);
  memcpy(m_pieces[3].rot[3][2], "  4 ", 4);
  memcpy(m_pieces[3].rot[3][3], "    ", 4);
  m_pieces[3].color = ORANGE;
  m_pieces[3].tex_coord[0] = 1.f / 8.f * 3.f;
  m_pieces[3].tex_coord[1] = 1.f / 8.f * 4.f;

  memcpy(m_pieces[4].rot[0][0], "55  ", 4);
  memcpy(m_pieces[4].rot[0][1], " 55 ", 4);
  memcpy(m_pieces[4].rot[0][2], "    ", 4);
  memcpy(m_pieces[4].rot[0][3], "    ", 4);
  memcpy(m_pieces[4].rot[1][0], "  5 ", 4);
  memcpy(m_pieces[4].rot[1][1], " 55 ", 4);
  memcpy(m_pieces[4].rot[1][2], " 5  ", 4);
  memcpy(m_pieces[4].rot[1][3], "    ", 4);
  memcpy(m_pieces[4].rot[2][0], "55  ", 4);
  memcpy(m_pieces[4].rot[2][1], " 55 ", 4);
  memcpy(m_pieces[4].rot[2][2], "    ", 4);
  memcpy(m_pieces[4].rot[2][3], "    ", 4);
  memcpy(m_pieces[4].rot[3][0], "  5 ", 4);
  memcpy(m_pieces[4].rot[3][1], " 55 ", 4);
  memcpy(m_pieces[4].rot[3][2], " 5  ", 4);
  memcpy(m_pieces[4].rot[3][3], "    ", 4);
  m_pieces[4].color = YELLOW;
  m_pieces[4].tex_coord[0] = 1.f / 8.f * 4.f;
  m_pieces[4].tex_coord[1] = 1.f / 8.f * 5.f;

  memcpy(m_pieces[5].rot[0][0], "6   ", 4);
  memcpy(m_pieces[5].rot[0][1], "6   ", 4);
  memcpy(m_pieces[5].rot[0][2], "66  ", 4);
  memcpy(m_pieces[5].rot[0][3], "    ", 4);
  memcpy(m_pieces[5].rot[1][0], "666 ", 4);
  memcpy(m_pieces[5].rot[1][1], "6   ", 4);
  memcpy(m_pieces[5].rot[1][2], "    ", 4);
  memcpy(m_pieces[5].rot[1][3], "    ", 4);
  memcpy(m_pieces[5].rot[2][0], "66  ", 4);
  memcpy(m_pieces[5].rot[2][1], " 6  ", 4);
  memcpy(m_pieces[5].rot[2][2], " 6  ", 4);
  memcpy(m_pieces[5].rot[2][3], "    ", 4);
  memcpy(m_pieces[5].rot[3][0], "  6 ", 4);
  memcpy(m_pieces[5].rot[3][1], "666 ", 4);
  memcpy(m_pieces[5].rot[3][2], "    ", 4);
  memcpy(m_pieces[5].rot[3][3], "    ", 4);
  m_pieces[5].color = GREEN;
  m_pieces[5].tex_coord[0] = 1.f / 8.f * 5.f;
  m_pieces[5].tex_coord[1] = 1.f / 8.f * 6.f;

  memcpy(m_pieces[6].rot[0][0], " 7   ", 4);
  memcpy(m_pieces[6].rot[0][1], " 7   ", 4);
  memcpy(m_pieces[6].rot[0][2], "77  ", 4);
  memcpy(m_pieces[6].rot[0][3], "    ", 4);
  memcpy(m_pieces[6].rot[1][0], "7   ", 4);
  memcpy(m_pieces[6].rot[1][1], "777 ", 4);
  memcpy(m_pieces[6].rot[1][2], "    ", 4);
  memcpy(m_pieces[6].rot[1][3], "    ", 4);
  memcpy(m_pieces[6].rot[2][0], "77  ", 4);
  memcpy(m_pieces[6].rot[2][1], "7   ", 4);
  memcpy(m_pieces[6].rot[2][2], "7   ", 4);
  memcpy(m_pieces[6].rot[2][3], "    ", 4);
  memcpy(m_pieces[6].rot[3][0], "777 ", 4);
  memcpy(m_pieces[6].rot[3][1], "  7 ", 4);
  memcpy(m_pieces[6].rot[3][2], "    ", 4);
  memcpy(m_pieces[6].rot[3][3], "    ", 4);
  m_pieces[6].color = PURPLE;
  m_pieces[6].tex_coord[0] = 1.f / 8.f * 6.f;
  m_pieces[6].tex_coord[1] = 1.f / 8.f * 7.f;

  m_shader = new Shader;
  m_texts.push_back(new Object::Text("0", RED, -0.99f, 0.65f));
  m_texts.push_back(new Object::Text("0", RED, -0.99f, 0.25f));
  m_texts.push_back(new Object::Text("1", RED, -0.99f, -0.15f));
  //m_texts.push_back(new Object::Text("", RED, 0.f, 0.f));
  m_texts.push_back(new Object::Text("Score :", RED, -0.99f, 0.8f));
  m_texts.push_back(new Object::Text("Lines :", RED, -0.99f, 0.4f));
  m_texts.push_back(new Object::Text("Level :", RED, -0.99f, 0.f));

  m_texture.setTexture("./textures/tetris.png");

  float tmp_speeds[12] = {1.f, 0.9f, 0.8f, 0.7f, 0.6f, 0.5f, 0.4f, 0.3f, 0.2f, 0.1f, 0.09f, 0.08f};
  int   tmp_levels[11] = {5, 9, 13, 20, 35, 55, 80, 110, 140, 170, 200};

  for (unsigned int i = 0; i < 12; ++i) {
      m_speeds[i] = tmp_speeds[i];
    }
  for (unsigned int i = 0; i < 11; ++i) {
      m_levels[i] = tmp_levels[i];
    }
  srand(time(0));
}

Tetris::~Tetris()
{
  for (auto it = m_texts.begin(); it != m_texts.end(); ++it) {
      delete *it;
    }
}

void  Tetris::initializeGL()
{
  m_texture.setRepeat(false);
  loadTexture();
  m_piece.id = -1;

  std::string vert;
  std::string frag;

  vert = "#version 150 core\n"
      "in vec2 in_Vertex;\n"
      //"in vec3 in_Color;\n"
      "in vec2 in_TexCoord0;\n"

      //"out vec3 color;\n"
      "out vec2 coordTexture;\n"
      "void main()\n"
      "{\n"
      "gl_Position.xy = in_Vertex;\n"
      //"color = in_Color;\n"
      "coordTexture = in_TexCoord0;\n"
      "}";
  frag =
      "#version 150 core\n"

      //"in vec3 color;\n"
      "in vec2 coordTexture;\n"
      "uniform sampler2D tex;\n"

      "out vec4 out_Color;\n"
      "void main()\n"
      "{\n"
      //"out_Color = vec4(color, 1.0);\n"
      "out_Color = texture(tex, coordTexture);\n"
      "}";

  m_shader->setVertexSource(vert);
  m_shader->setFragmentSource(frag);
  if (!m_shader->load()){
      HandleError::showError("Shader didn't load in Tetris");
      exit(-1);
    }

  //tetris 'grid'
  m_vertices.push_back(-0.5f);
  m_vertices.push_back(0.9f);
  m_textures.push_back(1.f / 8.f - 0.01f);
  m_textures.push_back(0.52f);

  m_vertices.push_back(-0.5f);
  m_vertices.push_back(-0.9f);
  m_textures.push_back(1.f / 8.f - 0.01f);
  m_textures.push_back(0.98f);

  m_vertices.push_back(0.5f);
  m_vertices.push_back(-0.9f);
  m_textures.push_back(0.01f);
  m_textures.push_back(0.98f);

  m_vertices.push_back(0.5f);
  m_vertices.push_back(-0.9f);
  m_textures.push_back(0.01f);
  m_textures.push_back(0.98f);

  m_vertices.push_back(0.5f);
  m_vertices.push_back(0.9f);
  m_textures.push_back(0.01f);
  m_textures.push_back(0.52f);

  m_vertices.push_back(-0.51f);
  m_vertices.push_back(0.91f);
  m_textures.push_back(1.f / 8.f - 0.01f);
  m_textures.push_back(0.52f);

  const float tmp_space = 22 / 1.8f;

  for (int y = 0; y < 22; ++y) {
      for (int x = 0; x < 10; ++x) {
          map[y][x] = 0;
          m_vertices.push_back(-0.5f + x / 10.f); //up left
          m_vertices.push_back(0.9f - y / tmp_space);
          m_textures.push_back(1.f);
          m_textures.push_back(1.f);

          m_vertices.push_back(-0.5f + (x + 1) / 10.f); //up right
          m_vertices.push_back(0.9f - y / tmp_space);
          m_textures.push_back(1.f);
          m_textures.push_back(1.f);

          m_vertices.push_back(-0.5f + x / 10.f); //down left
          m_vertices.push_back(0.9f - (y + 1) / tmp_space);
          m_textures.push_back(1.f);
          m_textures.push_back(1.f);

          m_vertices.push_back(-0.5f + (x + 1) / 10.f); //up right
          m_vertices.push_back(0.9f - y / tmp_space);
          m_textures.push_back(1.f);
          m_textures.push_back(1.f);

          m_vertices.push_back(-0.5f + x / 10.f); //down left
          m_vertices.push_back(0.9f - (y + 1) / tmp_space);
          m_textures.push_back(1.f);
          m_textures.push_back(1.f);

          m_vertices.push_back(-0.5f + (x + 1) / 10.f); //down right
          m_vertices.push_back(0.9f - (y + 1) / tmp_space);
          m_textures.push_back(1.f);
          m_textures.push_back(1.f);
        }
    }

  m_pointsNumber = m_vertices.size() / 2;

  /*for (unsigned int i = 0; i < m_pointsNumber; ++i) {
      m_couleurs.push_back(1.f);
      m_couleurs.push_back(1.f);
      m_couleurs.push_back(1.f);
    }*/

  this->initVertexBufferObject();
  this->initVertexArrayObject();

  for (auto it = m_texts.begin(); it != m_texts.end(); ++it) {
      (*it)->initializeGL();
    }
}

void  Tetris::paintGL(const glm::mat4 &view_matrix, const glm::mat4 &proj_matrix)
{
  (void)view_matrix;
  (void)proj_matrix;
  glUseProgram(m_shader->getProgramID());

  glBindVertexArray(m_vaoID);

  glEnable(GL_TEXTURE_2D);
  glEnable(GL_BLEND);
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

  m_texture.bind();
  glDrawArrays(GL_TRIANGLES, 0, m_pointsNumber);
  m_texture.unbind();

  for (auto it = m_texts.begin(); it != m_texts.end(); ++it) {
      (*it)->paintGL(view_matrix, proj_matrix);
    }
  glDisable(GL_BLEND);
  glDisable(GL_TEXTURE_2D);
}

void    Tetris::update(const float &n)
{
  if (!m_end) {
      Color b = BLACK;
      m_elapsed -= n;
      if (m_elapsed <= 0.f) {
          if (m_piece.id >= 0) {
              m_piece.y++;
              if (!canMove()) {
                  m_piece.y--;
                  createNewPiece();
                } else {
                  deleteTmpPiece();
                  copyInMap();
                }
            } else {
              createNewPiece();
            }
          m_elapsed = m_speeds[m_level];
        }
      if (!m_hasNew)
        return;
      for (int y = 0; y < 22; ++y) {
          for (int x = 0; x < 10; ++x) {
              switch (map[y][x]) {
                case 0:
                  setColor(x, y, 0);
                  break;
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                  setColor(x, y, &m_pieces[map[y][x] - '1']);
                  break;
                case '1' + 10:
                case '2' + 10:
                case '3' + 10:
                case '4' + 10:
                case '5' + 10:
                case '6' + 10:
                case '7' + 10:
                  setColor(x, y, &m_pieces[map[y][x] - '1' - 10]);
                  break;
                default:
                  break;
                }
            }
        }
      //this->updateVertexBufferObject(&m_couleurs[0], m_couleurs.size() * sizeof(m_couleurs[0]),
      //    m_verticesSize);
      this->updateVertexBufferObject(&m_textures[0], m_textures.size() * sizeof(m_textures[0]),
          m_verticesSize);
      m_hasNew = false;
    }
}

void  Tetris::setColor(int x, int y, PieceDatas *c)
{
  //int res = y * 180 + x * 18 + 18;
  int res = y * 120 + x * 12 + 12;

  /*for (int i = 0; i < 6; ++i) {
      m_couleurs[res] = c.red();
      m_couleurs[res + 1] = c.green();
      m_couleurs[res + 2] = c.blue();
      res += 3;
    }*/

  if (c) {
      m_textures[res] = c->tex_coord[0]; //up left
      m_textures[res + 1] = 0.f;

      m_textures[res + 2] = c->tex_coord[1]; //up right
      m_textures[res + 3] = 0.5f;

      m_textures[res + 4] = c->tex_coord[0]; //down left
      m_textures[res + 5] = 1.f;

      m_textures[res + 6] = c->tex_coord[1]; //up right
      m_textures[res + 7] = 0.5f;

      m_textures[res + 8] = c->tex_coord[0]; //down left
      m_textures[res + 9] = 1.f;

      m_textures[res + 10] = c->tex_coord[1]; //down right
      m_textures[res + 11] = 1.f;
    } else {
      m_textures[res] = 0.f; //up left
      m_textures[res + 1] = 0.f;

      m_textures[res + 2] = 1.f / 8.f; //up right
      m_textures[res + 3] = 0.f;

      m_textures[res + 4] = 0.f; //down left
      m_textures[res + 5] = 0.5f;

      m_textures[res + 6] = 1.f / 8.f; //up right
      m_textures[res + 7] = 0.f;

      m_textures[res + 8] = 0.f; //down left
      m_textures[res + 9] = 0.5f;

      m_textures[res + 10] = 1.f / 8.f; //down right
      m_textures[res + 11] = 0.5f;
    }
}

void  Tetris::createNewPiece()
{
  if (m_piece.id > -1) {
      deleteTmpPiece();
      int tmp = definitivePaste();

      if (tmp) {
          m_lines += tmp;
          m_score += tmp + m_level;
          m_texts[LINE]->setText(Utility::toString<int>(m_lines));
          if (m_level - 1 < 11 && m_lines >= m_levels[m_level - 1]) {
              ++m_level;
              m_texts[LVL]->setText(Utility::toString<int>(m_level));
            }
        }
      ++m_score;
      m_texts[SCORE]->setText(Utility::toString<int>(m_score));
    }
  m_piece.id = rand() % 7;
  m_piece.rot = 0;
  m_piece.x = 3;
  m_piece.y = 0;
  if (!canMove()) {
      m_end = true;
      m_texts[TETRIS_MSG]->setText("Defeat !\nPress any key to restart");
    } else {
      copyInMap();
    }
}

void  Tetris::deleteTmpPiece()
{
  if (m_piece.id < 0)
    return;
  int tot(0);

  for (int y = 0; y < 22 && tot < 4; ++y) {
      for (int x = 0; x < 10; ++x) {
          if (map[y][x] > '7') {
              map[y][x] = 0;
              if (++tot > 3)
                break;
            }
        }
    }
  m_hasNew = true;
}

int  Tetris::definitivePaste()
{
  int line(0);

  if (m_piece.id < 0)
    return line;
  for (int y = 0; y < 4; ++y)
    for (int x = 0; x < 4; ++x)
      if (m_pieces[m_piece.id].rot[m_piece.rot][y][x] != ' ')
        map[m_piece.y + y][m_piece.x + x] = m_pieces[m_piece.id].rot[m_piece.rot][y][x];
  for (int y = 21; y >= 0; --y) {
      bool ok = true;
      for (int x = 0; x < 10; ++x) {
          if (map[y][x] == 0) {
              x = 10;
              ok = false;
            }
        }
      if (ok) {
          ++line;
          for (int tmp_y = y; tmp_y >= 1; --tmp_y) {
              memcpy(map[tmp_y], map[tmp_y - 1], 10);
            }
          memset(map[0], 0, 10);
          ++y;
        }
    }
  m_hasNew = true;
  return line;
}

void  Tetris::copyInMap()
{
  if (m_piece.id < 0)
    return;
  for (int y = 0; y + m_piece.y < m_piece.y + 4 && y + m_piece.y < 22; ++y) {
      for (int x = 0; x + m_piece.x < m_piece.x + 4 && x + m_piece.x < 10; ++x) {
          if (m_pieces[m_piece.id].rot[m_piece.rot][y][x] != ' ')
            map[m_piece.y + y][m_piece.x + x] = m_pieces[m_piece.id].rot[m_piece.rot][y][x] + 10;
        }
    }
  m_hasNew = true;
}

bool  Tetris::canMove()
{
  if (m_piece.id < 0)
    return false;
  for (int y = 0; y < 4; ++y) {
      for (int x = 0; x < 4; ++x) {
          if (m_pieces[m_piece.id].rot[m_piece.rot][y][x] != ' ') {
              if (x + m_piece.x > 9 || x + m_piece.x < 0)
                return false;
              if (y + m_piece.y > 21 || y + m_piece.y < 0)
                return false;
              if (map[m_piece.y + y][m_piece.x + x] != 0 &&
                  map[m_piece.y + y][m_piece.x + x] <= '8')
                return false;
            }
        }
    }
  return true;
}

void  Tetris::keyPressEvent(int key)
{
  int tmp;

  if (m_end) {
      m_end = false;
      m_texts[TETRIS_MSG]->setText("");
      return;
    }
  switch (key) {
    case SDLK_RIGHT:
      tmp = m_piece.x;

      ++m_piece.x;
      if (!canMove())
        m_piece.x = tmp;
      else {
          deleteTmpPiece();
          copyInMap();
        }
      break;
    case SDLK_LEFT:
      tmp = m_piece.x;

      --m_piece.x;
      if (!canMove())
        m_piece.x = tmp;
      else {
          deleteTmpPiece();
          copyInMap();
        }
      break;
    case SDLK_UP:
      tmp = m_piece.rot;

      if (++m_piece.rot > 3)
        m_piece.rot = 0;
      if (!canMove())
        m_piece.rot = tmp;
      else {
          deleteTmpPiece();
          copyInMap();
        }
      break;
    case SDLK_DOWN:
      tmp = m_piece.y;

      ++m_piece.y;
      if (!canMove())
        m_piece.y = tmp;
      else {
          deleteTmpPiece();
          copyInMap();
        }
      break;
    case SDLK_SPACE:
      tmp = 0;
      do {
          ++m_piece.y;
          ++tmp;
        } while (canMove());
      --m_piece.y;
      m_score += tmp;
      m_elapsed = 0.f;
      break;
    default:
      break;
    }
}

void  Tetris::keyReleaseEvent(int key)
{
}
