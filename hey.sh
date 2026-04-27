rails g scaffold Epoque nom:string
rails g scaffold PuceCategorie nom:string description:text
rails g scaffold StyleMusical nom:string 
rails g scaffold Caractere nom:string
rails g scaffold CoupArchet nom:string technique:string rythme_exact:string vitesse_musicale:string longueur_archet:string pression:string vitesse_archet:string point_contact:string angle_archet:string type_attaque:string dynamique_typique:string description:text epoque:references puce_categorie:references style_musical:references caractere:references
