import data.list.defs

namespace string

def map_tokens (c : char) (f : list string → list string) : string → string :=
intercalate (singleton c) ∘ f ∘ split (= c)

def over_list (f : list char → list char) : string → string :=
list.as_string ∘ f ∘ string.to_list

def split_on (c : char) (s : string) : list string :=
(s.to_list.split_on c).map list.as_string

def is_prefix_of (x y : string) : bool :=
x.to_list.is_prefix_of y.to_list

def is_suffix_of (x y : string) : bool :=
x.to_list.is_suffix_of y.to_list

end string
