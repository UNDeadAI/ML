bash curator.sh dataset/has_punctuation/$1/wiki_0$2 dataset/cured_text/$1/wiki_0$2
bash remove_punctuation.sh dataset/cured_text/$1/wiki_0$2 dataset/no_punctuation/$1/wiki_0$2
