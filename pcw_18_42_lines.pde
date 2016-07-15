import java.util.HashMap;

int NUM_LINES = 42;

float[] A = {0, 0, 0.5, 1.0, 
  0.5, 1.0, 1.0, 0.0, 
  0.25, 0.2, 0.75, 0.2};
float[] B = {0.0, 0.0, 0.0, 1.0, 
  0.0, 1.0, 0.75, 1.0, 
  1.0, 0.8, 1.0, 0.8, 
  0.25, 0.6, 0.8, 0.6, 
  1.0, 0.4, 1.0, 0.2, 
  0.75, 0.0, 0.0, 0.0};
float[] C = {0.25, 0.0, 1.0, 0.0, 
  0.0, 0.2, 0.0, 0.8, 
  0.25, 1.0, 0.75, 1.0};
float[] D = {0.0, 0.0, 0.0, 1.0, 
  0.0, 1.0, 0.75, 1.0, 
  0.75, 1.0, 1.0, 0.8, 
  1.0, 0.8, 1.0, 0.2, 
  1.0, 0.2, 0.8, 0.0, 
  0.8, 0.0, 0.2, 0.0};
float[] E = {1.0, 0.0, 0.0, 0.0, 
  0.0, 0.0, 0.0, 1.0, 
  0.0, 1.0, 0.8, 1.0, 
  0.25, 0.6, 0.5, 0.6};
float[] F = {0.0, 0.0, 0.0, 1.0, 
  0.0, 1.0, 1.0, 1.0, 
  0.0, 0.4, 0.5, 0.4};
float[] G = {0.5, 0.6, 1.0, 0.6, 
  1.0, 0.6, 1.0, 0.0, 
  1.0, 0.0, 0.25, 0.0, 
  0.0, 0.2, 0.0, 0.8, 
  0.25, 1.0, 0.75, 1.0};
float[] H = {0.0, 0.0, 0.0, 1.0, 
  0.0, 0.6, 0.75, 0.6, 
  1.0, 0.0, 1.0, 1.0};
float[] I = {0.0, 0.0, 1.0, 0.0, 
  0.0, 1.0, 1.0, 1.0, 
  0.5, 0.0, 0.5, 1.0};
float[] J = {0.5, 1.0, 1.0, 1.0, 
  1.0, 1.0, 1.0, 0.2, 
  0.75, 0.0, 0.25, 0.0, 
  0.0, 0.2, 0.0, 0.2};
float[] K = {0.0, 0.0, 0.0, 1.0, 
  0.75, 1.0, 0.25, 0.6, 
  0.25, 0.6, 1.0, 0.0};
float[] L = {1.0, 0.0, 0.0, 0.0, 
  0.0, 0.0, 0.0, 1.0};
float[] M = {0.0, 0.0, 0.0, 1.0, 
  0.25, 0.8, 0.5, 0.6, 
  0.5, 0.6, 0.75, 0.8, 
  1.0, 0.0, 1.0, 1.0};
float[] N = {0.0, 0.0, 0.0, 1.0, 
  0.25, 0.8, 1.0, 0.2, 
  1.0, 0.0, 1.0, 1.0};
float[] O = {0.0, 0.2, 0.0, 0.8, 
  0.25, 1.0, 0.75, 1.0, 
  1.0, 0.2, 1.0, 0.8, 
  0.75, 0.0, 0.25, 0.0};
float[] P = {0.0, 0.0, 0.0, 1.0, 
  0.0, 1.0, 0.75, 1.0, 
  1.0, 0.8, 1.0, 0.6, 
  0.75, 0.4, 0.25, 0.4};
float[] Q = {0.0, 0.2, 0.0, 0.8, 
  0.25, 1.0, 0.75, 1.0, 
  1.0, 0.2, 1.0, 0.8, 
  0.75, 0.0, 0.25, 0.0,
  0.5, 0.4, 1.0, 0.0};
float[] R = {0.0, 0.0, 0.0, 1.0, 
  0.0, 1.0, 0.75, 1.0, 
  1.0, 0.8, 1.0, 0.6, 
  0.75, 0.4, 0.25, 0.4,
  0.75, 0.2, 1.0, 0.0};
float[] S = {0.0, 0.0, 0.75, 0.0, 
  1.0, 0.2, 1.0, 0.4, 
  0.75, 0.6, 0.25, 0.6,
  0.0, 0.8, 0.0, 0.8, 
  0.25, 1.0, 0.75, 1.0};
float[] T = {0.0, 1.0, 1.0, 1.0, 
  0.5, 0.0, 0.5, 1.0};
float[] U = {0.0, 1.0, 0.0, 0.2, 
  0.25, 0.0, 1.0, 0.0, 
  1.0, 0.0, 1.0, 1.0};
float[] V = {0.0, 1.0, 0.5, 0.0, 
  0.5, 0.0, 1.0, 1.0};
float[] W = {0.0, 0.0, 0.0, 1.0, 
  0.25, 0.2, 0.5, 0.4, 
  0.5, 0.4, 0.75, 0.2, 
  1.0, 0.0, 1.0, 1.0};
float[] X = {0.0, 0.0, 0.5, 0.4, 
  0.5, 0.4, 1.0, 0.0, 
  0.0, 1.0, 0.5, 0.6, 
  0.5, 0.6, 1.0, 1.0};
float[] Y = {0.0, 1.0, 0.5, 0.6, 
  0.5, 0.6, 1.0, 1.0, 
  0.5, 0.0, 0.5, 0.4};
float[] Z = {1.0, 0.0, 0.0, 0.0, 
  0.0, 0.0, 0.0, 0.2, 
  0.0, 0.2, 1.0, 1.0, 
  1.0, 1.0, 0.0, 1.0};
float [] ZERO = {0.0, 0.2, 0.0, 0.8, 
  0.25, 1.0, 0.75, 1.0, 
  1.0, 0.2, 1.0, 0.8, 
  0.75, 0.0, 0.25, 0.0,
  0.0, 0.2, 1.0, 0.8};  
float[] ONE = {0.5, 1.0, 0.25, 0.8, 
  0.5, 0.0, 0.5, 1.0, 
  0.25, 0.0, 0.75, 0.0};
float[] TWO = {1.0, 0.0, 0.0, 0.0, 
  0.0, 0.0, 1.0, 0.6,
  1.0, 0.6, 1.0, 0.8,
  0.75, 1.0, 0.25, 1.0,
  0.0, 0.8, 0.0, 0.8};
float[] THREE = {0.0, 0.2, 0.0, 0.2, 
  0.25, 0.0, 0.75, 0.0,
  1.0, 0.2, 1.0, 0.4,
  0.5, 0.6, 0.75, 0.6,
  1.0, 0.8, 1.0, 0.8,
  0.75, 1.0, 0.25, 1.0};
float[] FOUR = {0.25, 0.8, 0.0, 0.4, 
  0.0, 0.4, 1.0, 0.4,
  0.75, 1.0, 0.75, 0.0};  
float[] FIVE = {0.0, 0.0, 0.75, 0.0,
  1.0, 0.2, 1.0, 0.4,
  0.0, 0.6, 0.75, 0.6,
  0.0, 0.6, 0.25, 1.0,
  0.25, 1.0, 1.0, 1.0};
float[] SIX = {0.0, 0.2, 0.0, 0.8, 
  0.25, 0.0, 0.75, 0.0,
  1.0, 0.2, 1.0, 0.4,
  0.0, 0.6, 0.75, 0.6,
  0.75, 1.0, 0.25, 1.0}; 
float[] SEVEN = {0.0, 1.0, 1.0, 1.0,
  1.0, 1.0, 0.5, 0.6,
  0.5, 0.6, 0.5, 0.0};
float[] EIGHT = {0.0, 0.2, 0.0, 0.4, 
  0.25, 0.0, 0.75, 0.0,
  1.0, 0.2, 1.0, 0.4,
  0.25, 0.6, 0.75, 0.6,
  0.0, 0.8, 0.0, 0.8,  
  1.0, 0.8, 1.0, 0.8,
  0.75, 1.0, 0.25, 1.0};
float[] NINE = {1.0, 0.4, 0.25, 0.4,
  0.0, 0.6, 0.0, 0.8,
  0.25, 1.0, 0.75, 1.0,
  1.0, 0.75, 1.0, 0.25,
  0.75, 0.0, 0.25, 0.0};
float[] PERIOD = {0.0, 0.0, 0.25, 0.0};
float[] QUESTION = {0.25, 0.2, 0.25, 0.4, 
  0.0, 1.0, 0.75, 1.0, 
  1.0, 0.8, 1.0, 0.6, 
  0.75, 0.4, 0.25, 0.4,
  0.25, 0.0, 0.25, 0.0};
float[] COMMA = {0.25, 0.0, 0.0, -0.2};
float[] APOSTROPHE = {0.75, 1.0, 0.25, 0.8};
float[] EXCLAMATION = {0.25, 0.0, 0.25, 0.0, 
  0.25, 0.4, 0.25, 1.0};
float[] FORWARD_SLASH = {0.0, 0.0, 1.0, 1.0};  

color[] COLORS = {0xFFA6206A, 0xFFEC1C4B, 0xFFF16A43, 0xFFF2D969, 0xFF2F9395};

HashMap<String, float[]> LETTERS = new HashMap<String, float[]>();

float KERN_WIDTH = 0.5;
float LEADING = 0.6;

float PADDING = 1.0;

String str_to_render = "42\nPLEASE TYPE\n";
int curr_char_i = 0;
int curr_line_i = 0;
float curr_letter_x = 0;
float curr_letter_y = 0;

float letter_every_x_sec = 0.3;  
float last_letter_rendered_sec = millis() * 0.001;
int COORDS_PER_LINE = 4;

float LERP_SPEED = 0.1;
float SHRINK_SEC = 1.0;
float MOVE_SEC = 2.0;

float[] lines_coords = new float[COORDS_PER_LINE * NUM_LINES]; 
float[] target_coords = new float[COORDS_PER_LINE * NUM_LINES];
float[] line_created_sec = new float[NUM_LINES];

float camera_x = 0;
float camera_y = 0;
float camera_w = 0;
float camera_h = 0;

float target_camera_x = 0;
float target_camera_y = 0;
float target_camera_w = 0;
float target_camera_h = 0;

void setup () {
  size(800, 500);

  LETTERS.put("A", A);
  LETTERS.put("B", B);
  LETTERS.put("C", C);
  LETTERS.put("D", D);
  LETTERS.put("E", E);
  LETTERS.put("F", F);
  LETTERS.put("G", G);
  LETTERS.put("H", H);
  LETTERS.put("I", I);
  LETTERS.put("J", J);
  LETTERS.put("K", K);
  LETTERS.put("L", L);
  LETTERS.put("M", M);
  LETTERS.put("N", N);
  LETTERS.put("O", O);
  LETTERS.put("P", P);
  LETTERS.put("Q", Q);
  LETTERS.put("R", R);
  LETTERS.put("S", S);
  LETTERS.put("T", T);
  LETTERS.put("U", U);
  LETTERS.put("V", V);
  LETTERS.put("W", W);
  LETTERS.put("X", X);
  LETTERS.put("Y", Y);
  LETTERS.put("Z", Z);
  LETTERS.put("0", ZERO);
  LETTERS.put("1", ONE);  
  LETTERS.put("2", TWO);  
  LETTERS.put("3", THREE);
  LETTERS.put("4", FOUR);
  LETTERS.put("5", FIVE);
  LETTERS.put("6", SIX);
  LETTERS.put("7", SEVEN);
  LETTERS.put("8", EIGHT);  
  LETTERS.put("9", NINE);
  LETTERS.put(".", PERIOD);
  LETTERS.put("?", QUESTION); 
  LETTERS.put(",", COMMA);
  LETTERS.put("'", APOSTROPHE);  
  LETTERS.put("!", EXCLAMATION);
  LETTERS.put("/", FORWARD_SLASH);
  
  for (int i = 0; i < NUM_LINES; i++) {
    float angle = i * TWO_PI / NUM_LINES;
    target_coords[i*4] = i * 0.5;
    target_coords[i*4+1] = sin(angle) * 4.0 - 5;
    target_coords[i*4+2] = -i * 0.5;
    target_coords[i*4+3] = sin(angle) * 4.0 - 5;
    lines_coords[i*4] = target_coords[i*4];
    lines_coords[i*4+1] = target_coords[i*4+1];
    lines_coords[i*4+2] = target_coords[i*4+2];
    lines_coords[i*4+3] = target_coords[i*4+3];
    line_created_sec[i] = 0;
  }  
}

void draw() {
  update();
  render();
}

void update() {
  if (millis() * 0.001 - last_letter_rendered_sec > letter_every_x_sec) {
    if (curr_char_i < str_to_render.length()) {
      last_letter_rendered_sec = millis() * 0.001;
      String letter_to_render = Character.toString(str_to_render.charAt(curr_char_i));
      float[] line_coords_for_letter = LETTERS.get(letter_to_render);
      if (letter_to_render.equals("\n")) {
        curr_letter_y -= 1 + LEADING;
        curr_letter_x = -1 - KERN_WIDTH;
      }
      if (line_coords_for_letter != null) {
        for (int i = 0; i < line_coords_for_letter.length; i+=4) {
          target_coords[curr_line_i*4] = line_coords_for_letter[i] + curr_letter_x;
          target_coords[curr_line_i*4 + 1] = line_coords_for_letter[i+1] + curr_letter_y;
          target_coords[curr_line_i*4 + 2] = line_coords_for_letter[i+2] + curr_letter_x;
          target_coords[curr_line_i*4 + 3] = line_coords_for_letter[i+3] + curr_letter_y;
          line_created_sec[curr_line_i] = millis() * 0.001;
          curr_line_i ++;
          curr_line_i %= NUM_LINES;
        }
      }
      curr_letter_x += 1 + KERN_WIDTH;
      curr_char_i ++;
    }
  }

  float min_x = target_coords[0];
  float min_y = target_coords[1];
  float max_x = target_coords[2];
  float max_y = target_coords[3];

  for (int i = 0; i < lines_coords.length; i+=4) {
    float dt = millis() * 0.001 - line_created_sec[i/4];
    if (dt <= SHRINK_SEC) {
      lines_coords[i+2] = lerp(lines_coords[i+2], lines_coords[i], LERP_SPEED);
      lines_coords[i+3] = lerp(lines_coords[i+3], lines_coords[i+1], LERP_SPEED);
    } else if (dt <= MOVE_SEC) {
      lines_coords[i] = lerp(lines_coords[i], target_coords[i], LERP_SPEED);
      lines_coords[i+1] = lerp(lines_coords[i+1], target_coords[i+1], LERP_SPEED);
      lines_coords[i+2] = lerp(lines_coords[i+2], target_coords[i], LERP_SPEED);
      lines_coords[i+3] = lerp(lines_coords[i+3], target_coords[i+1], LERP_SPEED);
    } else {
      lines_coords[i] = lerp(lines_coords[i], target_coords[i], LERP_SPEED);
      lines_coords[i+1] = lerp(lines_coords[i+1], target_coords[i+1], LERP_SPEED);
      lines_coords[i+2] = lerp(lines_coords[i+2], target_coords[i+2], LERP_SPEED);
      lines_coords[i+3] = lerp(lines_coords[i+3], target_coords[i+3], LERP_SPEED);
    }

    min_x = min(min_x, target_coords[i]);
    min_x = min(min_x, target_coords[i+2]);

    min_y = min(min_y, target_coords[i+1]);
    min_y = min(min_y, target_coords[i+3]);

    max_x = max(max_x, target_coords[i]);
    max_x = max(max_x, target_coords[i+2]);

    max_y = max(max_y, target_coords[i+1]);
    max_y = max(max_y, target_coords[i+3]);
  }

  target_camera_x = (max_x + min_x) * 0.5;
  target_camera_y = (max_y + min_y) * 0.5;
  target_camera_w = abs(max_x - min_x) + 2 * PADDING;
  target_camera_h = abs(max_y - min_y) + 2 * PADDING;

  camera_x = lerp(camera_x, target_camera_x, LERP_SPEED);
  camera_y = lerp(camera_y, target_camera_y, LERP_SPEED);
  camera_w = lerp(camera_w, target_camera_w, LERP_SPEED);
  camera_h = lerp(camera_h, target_camera_h, LERP_SPEED);
}

void render() {
  background(255);
  blendMode(MULTIPLY);
  strokeWeight(0.33);

  float screen_wh_ratio = 1.0 * width/height;
  float camera_wh_ratio = 1.0 * camera_w/camera_h;
  float scale_amount = 0;
  if (camera_wh_ratio > screen_wh_ratio) {
    scale_amount = width / camera_w;
  } else {
    scale_amount = height / camera_h;
  }

  pushMatrix();
  translate(width * 0.5, height * 0.5);  
  scale(scale_amount, -scale_amount);
  translate(-camera_x, -camera_y);  

  for (int i = 0; i < lines_coords.length; i+=4) {
    stroke(COLORS[i % COLORS.length]);
    line(lines_coords[i], lines_coords[i+1], lines_coords[i+2], lines_coords[i+3]);
  }
  popMatrix();
}

void keyPressed() {
  if (key != CODED) {
    str_to_render += Character.toUpperCase(key);
  } else {
    if (keyCode == RETURN || keyCode == ENTER) {
      str_to_render += "\n";
    }
  }
}
