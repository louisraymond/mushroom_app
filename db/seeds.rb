
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'mushrooms.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')


# TURNING PROPERTIES FROM THE DATA SET INTO THE APPROPRIATE INFORMATION

# ////////////////=====================================================================//////////////////
EDIBLE = {
  "e" => true,
  "p" => false,
  }
CAP_SHAPE = {
  "b" => "bell",
  "c" => "conical",
  "x" => "convex",
  "f" => "flat",
  "k" => "knobbed",
  "s" => "sunken",
  }

CAP_SURFACE = {
    "f" => "fibrous",
    "g" => "grooves",
    "y" => "scaly",
    "s" => "smooth",
  }
CAP_COLOR = {
  "n" => "brown",
  "b" => "buff",
  "c" => "cinnamon",
  "g" => "gray",
  "r" => "green",
  "p" => "pink",
  "u" => "purple",
  "e" => "red",
  "w" => "white",
  "y" => "yellow",
  }
BRUISES = {
  "t" => true,
  "f" => false,
  }
ODOR = {
  "a" => "almond",
  "l" => "anise",
  "c" => "creosote",
  "y" => "fishy",
  "f" => "foul",
  "m" => "musty",
  "n" => "none",
  "p" => "pungent",
  "s" => "spicy",
  }

GILL_ATTACHMENT = {
  "a" => "attached",
  "d" => "descending",
  "f" => "free",
  "n" => "notched",

  }
GILL_SPACING = {
   "c" => "close",
   "w" => "crowded",
   "d" => "distant",

  }
GILL_SIZE = {
  "b" => "broad",
  "n" => "narrow",
  }
GILL_COLOR = {
  "k" => "black",
  "n" => "brown",
  "b" => "buff",
  "h" => "chocolate",
  "g" => "gray",
  "r" => "green",
  "o" => "orange",
  "p" => "pink",
  "u"=> "purple",
  "e" => "red",
  "w" => "white",
  "y" => "yellow",

  }
STALK_SHAPE = {
  "e" => "enlarging",
  "t" => "tapering",

  }
STALK_ROOT = {
  "b" => "bulbous",
  "c" => "club",
  "u" => "cup",
  "e" => "equal",
  "z" => "rhizomorphs",
  "r" => "rooted",
  "?" => "missing"

  }
STALK_SURFACE_ABOVE_RING = {
  "f" => "fibrous",
  "y" => "scaly",
  "k" => "silky",
  "s" => "smooth"

  }
STALK_SURFACE_BELOW_RING = {
   "f" => "fibrous",
   "y" => "scaly",
   "k" => "silky",
   "s" => "smooth",

  }
STALK_COLOR_ABOVE_RING = {
  "n" => "brown",
  "b" => "buff",
  "c" => "cinnamon",
  "g" => "gray",
  "o" => "orange",
  "p" => "pink",
  "e" => "red",
  "w" => "white",
  "y" => "yellow",
  }
STALK_COLOR_BELOW_RING = {
  "n" => "brown",
  "b" => "buff",
  "c" => "cinnamon",
  "g" => "gray",
  "o" => "orange",
  "p" => "pink",
  "e" => "red",
  "w" => "white",
  "y" => "yellow",
  }
VEIL_TYPE = {
 "p" => "partial",
 "u" => "universal"
  }
VEIL_COLOR = {
  "n" => "brown",
  "o" => "orange",
  "w" => "white",
  "y" => "yellow"
  }
RING_NUMBER = {
  "n" => 0,
  "o" => 1,
  "t" => 2
  }
RING_TYPE = {
 "c" => "cobwebby",
 "e" => "evanescent",
 "f" => "flaring",
 "l" => "large",
 "n" => "none",
 "p" => "pendant",
 "s" => "sheathing",
 "z" => "zone",
  }
SPORE_PRINT_COLORORANGE = {
  "k" => "black",
  "n" => "brown",
  "b" => "buff",
  "h" => "chocolate",
  "r" => "green",
  "o" => "orange",
  "u" => "purple",
  "w" => "white",
  "y" => "yellow"
  }
POPULATION = {
  "a" => "abundant",
  "c" => "clustered",
  "n" => "numerous",
  "s" => "scattered",
  "v" => "several",
  "y" => "solitary"
  }
HABITAT = {
  "g" => "grasses",
  "l"=>"leaves",
  "m"=>"meadows",
  "p"=>"paths",
  "u"=>"urban",
  "w"=>"waste",
  "d"=>"woods"
  }

csv.each do |row|
  t = Mushroom.new
    t.edible = EDIBLE[row["edible"]]
    t.cap_shape = CAP_SHAPE[row["cap_shape"]]
    t.cap_surface = CAP_SURFACE[row["cap_surface"]]
    t.cap_color = CAP_COLOR[row["cap_color"]]
    t.bruises = BRUISES[row["bruises"]]
    t.odor = ODOR[row["odor"]]
    t.gill_attachment = GILL_ATTACHMENT[row["gill_attachment"]]
    t.gill_spacing = GILL_SPACING[row["gill_spacing"]]
    t.gill_size = GILL_SIZE[row["gill_size"]]
    t.gill_color = GILL_COLOR[row["gill_color"]]
    t.stalk_shape = STALK_SHAPE[row["stalk_shape"]]
    t.stalk_root = STALK_ROOT[row["stalk_root"]]
    t.stalk_surface_above_ring = STALK_SURFACE_ABOVE_RING[row["stalk_surface_above_ring"]]
    t.stalk_surface_below_ring = STALK_SURFACE_BELOW_RING[row["stalk_surface_below_ring"]]
    t.stalk_color_above_ring = STALK_COLOR_ABOVE_RING[row["stalk_color_above_ring"]]
    t.stalk_color_below_ring = STALK_COLOR_BELOW_RING[row["stalk_color_below_ring"]]
    t.veil_type = VEIL_TYPE[row["veil_type"]]
    t.veil_color = VEIL_COLOR[row["veil_color"]]
    t.ring_number = RING_NUMBER[row["ring_number"]]
    t.ring_type = RING_TYPE[row["ring_type"]]
    t.spore_print_colororange = SPORE_PRINT_COLORORANGE[row["spore_print_colororange"]]
    t.population = POPULATION[row["population"]]
    t.habitat = HABITAT[row["habitat"]]
    t.save
    puts "#{t.cap_shape}, #{t.cap_color} saved"
end
