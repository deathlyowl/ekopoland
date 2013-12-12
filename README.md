#Podręcznik użytkownika

##Wymagania
Do pracy generatora potrzeba:

###[homebrew](http://brew.sh)

	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

###Ruby

[Instrukcja instalacji Ruby na OS X Mavericks](http://railsapps.github.io/installrubyonrails-mac.html).

###[Jekyll](http://jekyllrb.com)

	gem install jekyll
	
###Tree

	brew install tree

##Procedura generowania
Projekt iOS musisz mieć w katalogu `~/coding/ekopoland`. Odpalenie skryptu `generatePlists.sh`, generuje pliki *JSON*, na ich podstawie pliki *plist* i przenosi je do projektu.

Kopie plików *plist* lądują też w katalogu *Xcode_stuff* i można przenieść je ręcznie. Właściwe pliki *JSON* generowane są do katalogu *_sites*.
