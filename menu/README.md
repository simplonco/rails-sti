== Création d'une association polymorphique

= Qu'est-ce qu'une association polymorphique ?

Grâce à une association, un Model est relié à plusieurs autres Models.
Dans l'exemple : dans un restaurant, un menu peut soit être appartenir à un parent ou appartenir à un enfant.
Ce menu présente les mêmes caractéristiques entrée/plat/dessert, pour l'un ou l'autre des Models. (parents et enfants).

Step 1 : Création des trois Model : Carte, Enfant et Parent

```
rails g model NomduModel
```
 

Step 2 : Dans le fichier de migration Carte, ajouter le champs :

```
t.references :taste, polymorphic: true
```
 
 Dans notre exemple ```taste``` permet de créer l'interface polymorphique, ses références regroupent à la fois une colonne taste_id et une colonne taste_type. La colonne taste_type permet de définir si l'instance de la classe Carte que l'on créera appartient à la classe Parent ou la classe Enfant. 

Step 3:

Créer les associations de table dans chaque model:

```
class Carte < ActiveRecord::Base
  belongs_to :taste, polymorphic: true
end
 
class Parent < ActiveRecord::Base
  has_many :cartes, as: :taste
end
 
class Product < ActiveRecord::Base
  has_many :cartes, as: :taste
end
```


Source : 

[Rails guides, chap. 2.9](http://guides.rubyonrails.org/association_basics.html#polymorphic-associations)
