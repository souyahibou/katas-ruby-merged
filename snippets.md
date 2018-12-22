#Katas
##Débutants
###Pour découvrir le langage
+ 99 Bottles : Ecrire la chanson (en TDD). =)
+ Cryptographer : Ecrire le ROT-13.
+ Accumulate : Réimplémentez léquivalent de Array#map
+ Bubble Sort : Faire du tri à bulle.
+ Bob : Pour vous familiariser avec les bases de la syntaxe, en faisant du TDD
+ Ruby Exercices : Une série d’exercices sur différents aspects du langage Ruby.
+ Robot Simulator : Un petit robot qui se déplace en fonction des instructions qu’on lui donne.
+ RNA Transcription : Pour traduire des brins d'ADN
+ Chiffres romains : Afficher des nombres en chiffres romains
 [https://github.com/ParisRubyWorkshop/ruby-beer-song.git](debutants/ruby-beer-song):__ __
 [https://github.com/ParisRubyWorkshop/cryptographer.git](debutants/cryptographer):__ __
 [https://github.com/fluency-in/ruby-accumulate.git](debutants/ruby-accumulate):__ __
 [https://github.com/ParisRubyWorkshop/bubble_sort.git](debutants/bubble_sort):__kata du bubble_sort__    
 [https://github.com/ParisRubyWorkshop/ruby-bob.git](debutants/ruby-bob):__ __
 [https://github.com/ParisRubyWorkshop/ruby-exercises.git](debutants/ruby-exercises):__ __
 [https://github.com/ParisRubyWorkshop/ruby-robot-simulator.git](debutants/ruby-robot-simulator):__ __
 [https://github.com/fluency-in/ruby-rna-transcription.git](debutants/ruby-rna-transcription):__ __
 [https://github.com/fluency-in/ruby-roman-numerals.git](debutants/ruby-roman-numerals):__ __
 [https://github.com/ParisRubyWorkshop/grandma.git](debutants/grandma):__Challenge de Chris Pane__ ~~archived~~

##Intermédiaires
###Si vous connaissez déjà les bases et quelques gems:
 + Sinatra API : Une petite api json avec Sinatra, similaire à File to Api
 + Guilded Rose : Oserez vous améliorer l'algorithme de Leeroy?
 + Du fichier à l’api : Faites une api à partir d’un fichier json.
 + FileDB : Faites une base de données à partir d’un fichier json. Kata réalisé par LiveMentor :D
 + Binary Tree : Insérez et cherchez dans un arbre binaire, une structure de donnée très utilisée à bas niveau.
 + ActionCableExample : Fabriquez un chat en temps réel avec Action Cable
 + CustomSet : Réimplémentez la classe Set.
 + Sidepunch : Comprenez les background jobs en implémentant un clone de Sidekiq
 + Flashcards : Dans ce projet, vous écrirez un programme flashcard qui sera utilisé via la ligne de commande. Un utilisateur pourra voir les questions, deviner et voir un score final à la fin du tour.
 + Battleship : Utiliser Ruby pour implementer le jeu classique Bataille navale!
 [https://github.com/ParisRubyWorkshop/sinatra-api.git](intermediaires/sinatra-api):__ __
 [https://github.com/williampollet/ruby_guilded_rose.git](intermediaires/ruby_guilded_rose):__ __   
 [https://github.com/ParisRubyWorkshop/file-to-api-kata.git](intermediaires/file-to-api-kata):__A kata to build an http api from a JSON file__
 [https://github.com/livementor/katas.git](intermediaires/katas):__ __
 [https://github.com/fluency-in/ruby-binary-search-tree.git](intermediaires/ruby-binary-search-tree):__ __
 [https://github.com/ParisRubyWorkshop/action-cable-example.git](intermediaires/action-cable-example):__ __
 [https://github.com/ParisRubyWorkshop/ruby-custom-set.git](intermediaires/ruby-custom-set):__ __
 [https://github.com/ParisRubyWorkshop/sidepunch.git](intermediaires/sidepunch):__ __
 [https://github.com/ParisRubyWorkshop/flashcards.git](intermediaires/flashcards):__ __
 [https://github.com/ParisRubyWorkshop/Battleship.git](intermediaires/Battleship):__ __


##Experts
###Si vous avez déjà travaillé sur un projet Ruby/Rails en production:
 Spec This Not That : Quelles specs faire tourner sur une grosse suite de tests ?
 [https://github.com/ParisRubyWorkshop/spec-this-not-that-kata.git](experts/spec-this-not-that-kata):__ __

##Others
 [https://github.com/ParisRubyWorkshop/scrabble.git](others/scrabble):__Scrabble game on ruby__   
 [https://github.com/ParisRubyWorkshop/robodoku.git](others/robodoku):__Un Sodoku à la sauce ruby__  
 [https://github.com/ParisRubyWorkshop/goober.git](others/goober):__projet goober__   
 [https://github.com/ParisRubyWorkshop/collection.git](others/collection):__comprendre les collections en prog__


##Katas
Ailleurs sur les internets:
codekata.com
codewars.com
codingdojo là où le format Kata est né



<!-- git init

git remote add -f ruby-beer-song debutants/ruby-beer-song
git remote add -f cryptographer debutants/cryptographer
git remote add -f ruby-accumulate debutants/ruby-accumulate
git remote add -f bubble_sort debutants/bubble_sort
git remote add -f ruby-bob debutants/ruby-bob
git remote add -f ruby-exercises debutants/ruby-exercises
git remote add -f ruby-robot-simulator debutants/ruby-robot-simulator
git remote add -f ruby-rna-transcription debutants/ruby-rna-transcription
git remote add -f ruby-roman-numerals debutants/ruby-roman-numerals
git remote add -f grandma debutants/grandma

git remote add -f sinatra-api intermediaires/sinatra-api
git remote add -f ruby_guilded_rose intermediaires/ruby_guilded_rose
git remote add -f file-to-api-kata intermediaires/file-to-api-kata
git remote add -f katas intermediaires/katas
git remote add -f ruby-binary-search-tree intermediaires/ruby-binary-search-tree
git remote add -f action-cable-example intermediaires/action-cable-example
git remote add -f ruby-custom-set intermediaires/ruby-custom-set
git remote add -f sidepunch intermediaires/sidepunch
git remote add -f flashcards intermediaires/flashcards
git remote add -f Battleship intermediaires/Battleship

git remote add -f spec-this-not-that-kata experts/spec-this-not-that-kata

git remote add -f scrabble others/scrabble/
git remote add -f robodoku others/robodoku/
git remote add -f goober others/goober/
git remote add -f collection others/collection/



git merge -s ours --no-edit --allow-unrelated-histories ruby-beer-song/master
git merge -s ours --no-edit --allow-unrelated-histories cryptographer/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-accumulate/master
git merge -s ours --no-edit --allow-unrelated-histories bubble_sort/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-bob/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-exercises/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-robot-simulator/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-rna-transcription/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-roman-numerals/master
git merge -s ours --no-edit --allow-unrelated-histories grandma/master

git merge -s ours --no-edit --allow-unrelated-histories sinatra-api/master
git merge -s ours --no-edit --allow-unrelated-histories ruby_guilded_rose/master
git merge -s ours --no-edit --allow-unrelated-histories file-to-api-kata/master
git merge -s ours --no-edit --allow-unrelated-histories katas/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-binary-search-tree/master
git merge -s ours --no-edit --allow-unrelated-histories action-cable-example/master
git merge -s ours --no-edit --allow-unrelated-histories ruby-custom-set/master
git merge -s ours --no-edit --allow-unrelated-histories sidepunch/master
git merge -s ours --no-edit --allow-unrelated-histories flashcards/master
git merge -s ours --no-edit --allow-unrelated-histories Battleship/master

git merge -s ours --no-edit --allow-unrelated-histories spec-this-not-that-kata/master

git merge -s ours --no-edit --allow-unrelated-histories scrabble/master
git merge -s ours --no-edit --allow-unrelated-histories robodoku/master
git merge -s ours --no-edit --allow-unrelated-histories goober/master
git merge -s ours --no-commit --allow-unrelated-histories collection/master



git read-tree --prefix=katas/debutants/ruby-beer-song -u ruby-beer-song/master
git read-tree --prefix=katas/debutants/cryptographer -u cryptographer/master
git read-tree --prefix=katas/debutants/ruby-accumulate -u ruby-accumulate/master
git read-tree --prefix=katas/debutants/bubble_sort -u bubble_sort/master
git read-tree --prefix=katas/debutants/ruby-bob -u ruby-bob/master
git read-tree --prefix=katas/debutants/ruby-exercises -u ruby-exercises/master
git read-tree --prefix=katas/debutants/ruby-robot-simulator -u ruby-robot-simulator/master
git read-tree --prefix=katas/debutants/ruby-rna-transcription -u ruby-rna-transcription/master
git read-tree --prefix=katas/debutants/ruby-roman-numerals -u ruby-roman-numerals/master
git read-tree --prefix=katas/debutants/grandma -u grandma/master

git read-tree --prefix=katas/intermediaires/sinatra-api -u sinatra-api/master
git read-tree --prefix=katas/intermediaires/ruby_guilded_rose -u ruby_guilded_rose/master
git read-tree --prefix=katas/intermediaires/file-to-api-kata -u file-to-api-kata/master
git read-tree --prefix=katas/intermediaires/katas -u katas/master
git read-tree --prefix=katas/intermediaires/ruby-binary-search-tree -u ruby-binary-search-tree/master
git read-tree --prefix=katas/intermediaires/action-cable-example -u action-cable-example/master
git read-tree --prefix=katas/intermediaires/ruby-custom-set -u ruby-custom-set/master
git read-tree --prefix=katas/intermediaires/sidepunch -u sidepunch/master
git read-tree --prefix=katas/intermediaires/flashcards -u flashcards/master
git read-tree --prefix=katas/intermediaires/Battleship -u Battleship/master

git read-tree --prefix=katas/experts/spec-this-not-that-kata -u spec-this-not-that-kata/master

git read-tree --prefix=katas/others/scrabble -u scrabble/master
git read-tree --prefix=katas/others/robodoku -u robodoku/master
git read-tree --prefix=katas/others/goober -u goober/master
git read-tree --prefix=katas/others/collection -u collection/master

git commit -m "Merge all sub_repositories as ours subdirectories"

git remote add origin https://github.com/souyahibou/katas-ruby-merged.git -->

## Ways to join all repositories
1. [https://dev.to/quangle/git---dplacer-des-dossiers-dun-repo--un-autre-sans-perdre-lhistorique-3kc4](Git - Déplacer des dossiers d'un repo à un autre sans perdre l'historique)
Créez une connection remote de repo_B(master) vers repo_A(sub_repo) (où sub_repo sera une branche de master):
  ```bash
  git remote add remote_name <chemin/local/vers/sub_repo>
  git pull remote_name master --allow-unrelated-histories
  git remote rm <remote_name>
  git push
  ```
2. Git Submodule
  ```bash
  git submodule add git://github.com/chneukirchen/rack.git [path/dir_name]
  git commit -m 'first commit with submodule rack'
  ```
3. Git Subtree
[https://mirrors.edge.kernel.org/pub/software/scm/git/docs/howto/using-merge-subtree.html](How to use the subtree merge strategy)
  ```bash
  $ git remote add -f remote_name /path/to/sub_repo                              <1>
  $ git merge -s ours --no-commit --allow-unrelated-histories remote_name/master <2>
  $ git read-tree --prefix=/path/to/sub_repo -u remote_name/master               <3>
  $ git commit -m "Merge sub_repo as our subdirectory"                           <4>

  $ git pull -s subtree remote_name master                                       <5>
  ```
  1. name the other project "Bproject", and fetch.
  2. prepare for the later step to record the result
  3. read "master" branch of Bproject to the subdirectory "dir-B".
  4. record the merge result.
  5. maintain the result with subsequent merges using "subtree"
  6. The first four commands are used for the initial merge, while the last one is to merge updates from B project.
