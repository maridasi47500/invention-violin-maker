# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# Nettoie avant de seed
puts "Cleaning database..."
CoupArchet.destroy_all
Epoque.destroy_all
PuceCategory.destroy_all
StyleMusical.destroy_all
Caractere.destroy_all

puts "Seeding reference tables..."

# Epoques
baroque = Epoque.create!(nom: "Baroque")
classique = Epoque.create!(nom: "Classique") 
romantique = Epoque.create!(nom: "Romantique")
moderne = Epoque.create!(nom: "Moderne")
universel = Epoque.create!(nom: "Baroque → Moderne")

# Puce / Catégories
continu = PuceCategory.create!(nom: "Continu", description: "Archet ne quitte pas la corde")
articule = PuceCategory.create!(nom: "Articulé", description: "Notes séparées avec attaque")
sautille = PuceCategory.create!(nom: "Sautillé", description: "Archet rebondit sur la corde")
continu_articule = PuceCategory.create!(nom: "Continu articulé", description: "Legato avec pulsations")
special = PuceCategory.create!(nom: "Spécial", description: "Effets et techniques étendues")

# Styles
universel_style = StyleMusical.create!(nom: "Universel")
lyrique = StyleMusical.create!(nom: "Lyrique")
virtuosite = StyleMusical.create!(nom: "Virtuosité")
orchestral = StyleMusical.create!(nom: "Orchestral")
danse = StyleMusical.create!(nom: "Danse")
accentue = StyleMusical.create!(nom: "Accentué")
chante = StyleMusical.create!(nom: "Chanté")
effets = StyleMusical.create!(nom: "Effets")
symphonique = StyleMusical.create!(nom: "Symphonique")

# Caractères
neutre = Caractere.create!(nom: "Neutre")
cantabile = Caractere.create!(nom: "Cantabile")
energico = Caractere.create!(nom: "Energico")
vivace = Caractere.create!(nom: "Vivace")
brillante = Caractere.create!(nom: "Brillante")
deciso = Caractere.create!(nom: "Deciso")
dolce = Caractere.create!(nom: "Dolce")
secco = Caractere.create!(nom: "Secco")
danse_car = Caractere.create!(nom: "Danse")

puts "Seeding coups d'archet..."

coups = [
  {
    nom: "Détaché", technique: "Détaché simple", rythme_exact: "Noires / croches",
    vitesse_musicale: "Andante – Allegro", longueur_archet: "½ – pleine", pression: "Moyenne",
    vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat", 
    type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Notes séparées, son égal",
    epoque: universel, puce_category: continu, style_musical: universel_style, caractere: neutre
  },
  {
    nom: "Legato", technique: "Legato", rythme_exact: "Plusieurs notes liées",
    vitesse_musicale: "Adagio – Andante", longueur_archet: "Pleine", pression: "Légère",
    vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
    type_attaque: "Depuis la corde", dynamique_typique: "p – f", description: "Un seul coup d'archet pour plusieurs notes",
    epoque: classique, puce_category: continu, style_musical: lyrique, caractere: cantabile
  },
  {
    nom: "Staccato", technique: "Staccato", rythme_exact: "Croches / doubles",
    vitesse_musicale: "Allegro", longueur_archet: "¼ – ½", pression: "Moyenne à forte",
    vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
    type_attaque: "Depuis la corde", dynamique_typique: "mf – f", description: "Notes courtes, arrêt net",
    epoque: classique, puce_category: articule, style_musical: virtuosite, caractere: energico
  },
  {
    nom: "Spiccato", technique: "Spiccato", rythme_exact: "Doubles / triolets",
    vitesse_musicale: "Allegro – Presto", longueur_archet: "⅓", pression: "Légère",
    vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
    type_attaque: "Depuis l'air", dynamique_typique: "p – mf", description: "Rebond naturel de l'archet",
    epoque: romantique, puce_category: sautille, style_musical: orchestral, caractere: vivace
  },
  {
    nom: "Martelé", technique: "Martelé", rythme_exact: "Noires / croches",
    vitesse_musicale: "Moderato", longueur_archet: "¼", pression: "Forte",
    vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
    type_attaque: "Depuis la corde", dynamique_typique: "f", description: "Attaque forte, relâchement immédiat",
    epoque: romantique, puce_category: articule, style_musical: accentue, caractere: deciso
  },
  {
    nom: "Ricochet", technique: "Ricochet", rythme_exact: "Groupes de 3–6 rebonds",
    vitesse_musicale: "Presto", longueur_archet: "Pointe", pression: "Légère",
    vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
    type_attaque: "Depuis l'air", dynamique_typique: "p – mf", description: "Plusieurs rebonds dans un seul coup",
    epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: brillante
  },
  {
    nom: "Col legno", technique: "Col legno battuto", rythme_exact: "Rythmes libres",
    vitesse_musicale: "Variable", longueur_archet: "Variable", pression: "Très légère",
    vitesse_archet: "Variable", point_contact: "Bois", angle_archet: "Plat",
    type_attaque: "Depuis l'air", dynamique_typique: "pp – p", description: "Frapper avec le bois",
    epoque: moderne, puce_category: special, style_musical: effets, caractere: secco
  }
]

CoupArchet.create!(coups)
puts "Done! #{CoupArchet.count} coups d'archet créés."
# Epoques supplémentaires
classique_romantique = Epoque.create!(nom: "Classique → Romantique")
baroque_classique = Epoque.create!(nom: "Baroque → Classique")
classique_moderne = Epoque.create!(nom: "Classique → Moderne")
romantique_moderne = Epoque.create!(nom: "Romantique → Moderne")

# Styles supplémentaires
noble = StyleMusical.create!(nom: "Danse noble")
dramatique = StyleMusical.create!(nom: "Dramatique")
pedagogique = StyleMusical.create!(nom: "Pédagogique")
folk = StyleMusical.create!(nom: "Folk")
vivaldi_bach = StyleMusical.create!(nom: "Vivaldi/Bach")

# Caractères supplémentaires
maestoso = Caractere.create!(nom: "Maestoso")
brillant = Caractere.create!(nom: "Brillant")
leger = Caractere.create!(nom: "Léger")
ondulant = Caractere.create!(nom: "Ondulant")
metallique = Caractere.create!(nom: "Métallique")
flute = Caractere.create!(nom: "Flûté")
percussif = Caractere.create!(nom: "Percussif")
soutenu = Caractere.create!(nom: "Soutenu")
agitato = Caractere.create!(nom: "Agitato")
marcato = Caractere.create!(nom: "Marcato")
coups=[{
  nom: "Sautillé", technique: "Sautillé naturel", rythme_exact: "Doubles rapides",
  vitesse_musicale: "Presto", longueur_archet: "¼", pression: "Légère",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "p – mf", description: "Rebond automatique au milieu",
  epoque: moderne, puce_category: sautille, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Portato", technique: "Portato", rythme_exact: "Noires liées articulées",
  vitesse_musicale: "Andante", longueur_archet: "Pleine", pression: "Moyenne",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp – mf", description: "Legato avec petites articulations",
  epoque: romantique, puce_category: continu_articule, style_musical: chante, caractere: dolce
},
{
  nom: "Détaché baroque", technique: "Détaché baroque", rythme_exact: "Croches dansées",
  vitesse_musicale: "Allegro moderato", longueur_archet: "⅓", pression: "Légère",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Incliné",
  type_attaque: "Depuis la corde", dynamique_typique: "mp", description: "Décroissance naturelle du son",
  epoque: baroque, puce_category: articule, style_musical: danse, caractere: danse_car
},
{
  nom: "Tremolo", technique: "Tremolo mesuré/non mesuré", rythme_exact: "Doubles/Triples rapides",
  vitesse_musicale: "Allegro – Presto", longueur_archet: "Pointe", pression: "Légère à moyenne",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "pp – ff", description: "Répétition ultra rapide d’une note",
  epoque: romantique_moderne, puce_category: special, style_musical: dramatique, caractere: agitato
},
{
  nom: "Fouetté", technique: "Fouetté", rythme_exact: "Croche pointée + double",
  vitesse_musicale: "Allegro", longueur_archet: "Talon", pression: "Forte",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "f – ff", description: "Coup de fouet, attaque violente au talon",
  epoque: romantique, puce_category: articule, style_musical: virtuosite, caractere: energico
},
{
  nom: "Collé", technique: "Collé", rythme_exact: "Notes très courtes",
  vitesse_musicale: "Andante – Moderato", longueur_archet: "Talon", pression: "Forte au départ",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Archet colle puis relâche, depuis la corde",
  epoque: classique_moderne, puce_category: articule, style_musical: pedagogique, caractere: marcato
},
{
  nom: "Louré", technique: "Louré/Portato lourd", rythme_exact: "Noires liées pulsées",
  vitesse_musicale: "Adagio – Andante", longueur_archet: "Pleine", pression: "Moyenne pulsée",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Legato avec légère pulsation sur chaque note",
  epoque: baroque_classique, puce_category: continu_articule, style_musical: noble, caractere: maestoso
},
{
  nom: "Détaché lancé", technique: "Détaché lancé", rythme_exact: "Croches/Noires",
  vitesse_musicale: "Allegro", longueur_archet: "½ – ¾", pression: "Moyenne",
  vitesse_archet: "Modérée à rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf – f", description: "Détaché avec vitesse pour projeter",
  epoque: classique, puce_category: continu, style_musical: symphonique, caractere: brillant
},
{
  nom: "Staccato volant", technique: "Staccato volant", rythme_exact: "Groupes liés",
  vitesse_musicale: "Allegro – Presto", longueur_archet: "Pleine", pression: "Moyenne",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf – f", description: "Série de staccatos dans un même coup vers le haut",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Sautillé collé", technique: "Sautillé contrôlé", rythme_exact: "Doubles",
  vitesse_musicale: "Moderato – Allegro", longueur_archet: "⅓", pression: "Légère contrôlée",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp", description: "Rebond contrôlé, pas naturel",
  epoque: moderne, puce_category: sautille, style_musical: orchestral, caractere: leger
},
{
  nom: "Ondeggiando", technique: "Ondeggiando", rythme_exact: "Alternance cordes",
  vitesse_musicale: "Andante – Adagio", longueur_archet: "Pleine", pression: "Légère",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "p – mp", description: "Va-et-vient sur 2 cordes",
  epoque: romantique, puce_category: special, style_musical: effets, caractere: ondulant
},
{
  nom: "Sul ponticello", technique: "Jeu au chevalet", rythme_exact: "Variable",
  vitesse_musicale: "Variable", longueur_archet: "Variable", pression: "Très légère",
  vitesse_archet: "Variable", point_contact: "Sul ponticello", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "pp – mf", description: "Son grinçant, riche en harmoniques",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: metallique
},
{
  nom: "Sul tasto", technique: "Jeu sur la touche", rythme_exact: "Variable",
  vitesse_musicale: "Adagio – Andante", longueur_archet: "Pleine", pression: "Très légère",
  vitesse_archet: "Lente", point_contact: "Sul tasto", angle_archet: "Incliné",
  type_attaque: "Depuis la corde", dynamique_typique: "pp – p", description: "Son voilé, doux, sans harmoniques",
  epoque: classique_moderne, puce_category: special, style_musical: lyrique, caractere: flute
},
{
  nom: "Chopping", technique: "Chopping percussif", rythme_exact: "Syncopes",
  vitesse_musicale: "Allegro", longueur_archet: "Talon", pression: "Forte",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "f", description: "Frappe percussive, corde étouffée",
  epoque: moderne, puce_category: special, style_musical: folk, caractere: percussif
},
{
  nom: "Jeté", technique: "Jeté/Ricochet contrôlé", rythme_exact: "2-4 notes",
  vitesse_musicale: "Allegro – Presto", longueur_archet: "½ haute", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "mp – mf", description: "On lance l'archet pour 2-4 rebonds",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: leger
},
{
  nom: "Bariolage", technique: "Bariolage", rythme_exact: "Alternance cordes rapides",
  vitesse_musicale: "Allegro", longueur_archet: "Pleine", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Alternance corde à vide/corde appuyée",
  epoque: baroque, puce_category: special, style_musical: vivaldi_bach, caractere: brillant
},
{
  nom: "Son filé", technique: "Son filé", rythme_exact: "Tenues longues",
  vitesse_musicale: "Adagio", longueur_archet: "Pleine", pression: "Très légère à forte",
  vitesse_archet: "Très lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "pp – ff", description: "Cresc-dim sur une seule note",
  epoque: universel, puce_category: continu, style_musical: lyrique, caractere: soutenu
},
{
  nom: "Détaché porté", technique: "Détaché porté", rythme_exact: "Noires/Croches",
  vitesse_musicale: "Moderato", longueur_archet: "½ – pleine", pression: "Moyenne",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp – mf", description: "Détaché sans espace, très chantant",
  epoque: classique, puce_category: continu, style_musical: chante, caractere: cantabile
},
# 35 autres entrées historiques + variantes
{
  nom: "Grand détaché", technique: "Grand détaché", rythme_exact: "Noires longues",
  vitesse_musicale: "Moderato – Allegro", longueur_archet: "Pleine", pression: "Moyenne à forte",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "f", description: "Détaché large, sonore, symphonique",
  epoque: romantique, puce_category: continu, style_musical: symphonique, caractere: maestoso
},
{
  nom: "Détaché court", technique: "Détaché court", rythme_exact: "Doubles rapides",
  vitesse_musicale: "Allegro – Presto", longueur_archet: "¼", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp – mf", description: "Au milieu, très articulé",
  epoque: classique, puce_category: continu, style_musical: orchestral, caractere: leger
},
{
  nom: "Marcatissimo", technique: "Marcatissimo", rythme_exact: "Noires/Croches",
  vitesse_musicale: "Moderato", longueur_archet: "¼", pression: "Très forte",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "ff", description: "Chaque note martelée",
  epoque: romantique, puce_category: articule, style_musical: dramatique, caractere: marcato
},
{
  nom: "Staccato à la corde", technique: "Staccato à la corde", rythme_exact: "Croches",
  vitesse_musicale: "Moderato – Allegro", longueur_archet: "⅓", pression: "Forte",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf – f", description: "Staccato sans quitter la corde",
  epoque: classique, puce_category: articule, style_musical: universel_style, caractere: deciso
},
{
  nom: "Spiccato lent", technique: "Spiccato lent", rythme_exact: "Croches",
  vitesse_musicale: "Andante – Moderato", longueur_archet: "⅓", pression: "Légère",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "p – mp", description: "Rebond contrôlé tempo lent",
  epoque: romantique_moderne, puce_category: sautille, style_musical: lyrique, caractere: dolce
},
{
  nom: "Saltando", technique: "Saltando", rythme_exact: "Doubles/Triolets",
  vitesse_musicale: "Allegro", longueur_archet: "Milieu", pression: "Très légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "p", description: "Rebonds légers, italien",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: leger
},
{
  nom: "Picchettato", technique: "Picchettato", rythme_exact: "Croches piquées",
  vitesse_musicale: "Allegro", longueur_archet: "¼", pression: "Moyenne",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Piqué italien, net",
  epoque: classique, puce_category: articule, style_musical: universel_style, caractere: energico
},
{
  nom: "Balzato", technique: "Balzato", rythme_exact: "Doubles",
  vitesse_musicale: "Presto", longueur_archet: "¼", pression: "Légère",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "p – mp", description: "Bondissant, école française",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Arpeggio", technique: "Arpeggio sur 3-4 cordes", rythme_exact: "Triolets/Sextolets",
  vitesse_musicale: "Allegro", longueur_archet: "Pleine", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Accords brisés rapides",
  epoque: baroque, puce_category: special, style_musical: vivaldi_bach, caractere: brillant
},
{
  nom: "Tremolo d'archet", technique: "Tremolo d'archet libre", rythme_exact: "Non mesuré",
  vitesse_musicale: "Variable", longueur_archet: "Pointe", pression: "Très légère",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Incliné",
  type_attaque: "Depuis la corde", dynamique_typique: "pp – p", description: "Frémissement, effet d'atmosphère",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: ondulant
},
{
  nom: "Col legno tratto", technique: "Col legno tiré", rythme_exact: "Tenues",
  vitesse_musicale: "Adagio", longueur_archet: "Pleine", pression: "Très légère",
  vitesse_archet: "Lente", point_contact: "Bois", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "ppp", description: "Frotté avec le bois, son spectral",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: secco
},
{
  nom: "Détaché français", technique: "Détaché école française", rythme_exact: "Croches égales",
  vitesse_musicale: "Allegro", longueur_archet: "½", pression: "Moyenne",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Élégant, égal, Kreutzer",
  epoque: classique, puce_category: continu, style_musical: universel_style, caractere: brillant
},
{
  nom: "Détaché italien", technique: "Détaché école italienne", rythme_exact: "Noires/Croches",
  vitesse_musicale: "Moderato – Allegro", longueur_archet: "¾", pression: "Soutenue",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf – f", description: "Plus chantant, vibrato",
  epoque: romantique, puce_category: continu, style_musical: lyrique, caractere: cantabile
},
{
  nom: "Détaché allemand", technique: "Détaché école allemande", rythme_exact: "Noires",
  vitesse_musicale: "Moderato", longueur_archet: "Pleine", pression: "Forte",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "f", description: "Lourd, symphonique",
  epoque: romantique, puce_category: continu, style_musical: symphonique, caractere: maestoso
},
{
  nom: "Legato expressif", technique: "Legato avec vibrato", rythme_exact: "Notes liées longues",
  vitesse_musicale: "Adagio", longueur_archet: "Pleine", pression: "Variable",
  vitesse_archet: "Très lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "pp – f", description: "Legato romantique, très expressif",
  epoque: romantique, puce_category: continu, style_musical: lyrique, caractere: cantabile
},
{
  nom: "Port de voix", technique: "Glissé d'archet", rythme_exact: "2 notes liées",
  vitesse_musicale: "Andante", longueur_archet: "½", pression: "Légère à moyenne",
  vitesse_archet: "Lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp", description: "Glissando baroque entre 2 notes",
  epoque: baroque, puce_category: continu_articule, style_musical: danse, caractere: dolce
},
{
  nom: "Coup d'archet de Viotti", technique: "Détaché Viotti", rythme_exact: "Croche pointée + double",
  vitesse_musicale: "Allegro", longueur_archet: "¾", pression: "Moyenne",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf – f", description: "Attaque vive, typique concerto classique",
  epoque: classique, puce_category: articule, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Coup d'archet de Kreutzer", technique: "Kreutzer 2", rythme_exact: "Triolets",
  vitesse_musicale: "Allegro", longueur_archet: "Milieu", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Détaché égal au milieu, étude",
  epoque: classique, puce_category: continu, style_musical: pedagogique, caractere: neutre
},
{
  nom: "Staccato Paganini", technique: "Staccato montant volant", rythme_exact: "Gammes rapides",
  vitesse_musicale: "Presto", longueur_archet: "Pleine vers le haut", pression: "Moyenne",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "f", description: "Staccato volant sur 2-3 octaves",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Ricochet 3", technique: "Ricochet 3 rebonds", rythme_exact: "Triolets",
  vitesse_musicale: "Allegro", longueur_archet: "½ haute", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "mp", description: "3 rebonds contrôlés",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: leger
},
{
  nom: "Ricochet 4", technique: "Ricochet 4 rebonds", rythme_exact: "Quadruples",
  vitesse_musicale: "Presto", longueur_archet: "½ haute", pression: "Légère",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "mp – mf", description: "4 rebonds, Wieniawski",
  epoque: romantique, puce_category: sautille, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Flûté", technique: "Son flûté", rythme_exact: "Tenues", 
  vitesse_musicale: "Adagio – Andante", longueur_archet: "Pleine", pression: "Très légère",
  vitesse_archet: "Lente", point_contact: "Sul tasto extrême", angle_archet: "Très incliné",
  type_attaque: "Depuis la corde", dynamique_typique: "ppp – pp", description: "Son de flûte, harmoniques",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: flute
},
{
  nom: "Sub ponticello", technique: "Derrière chevalet", rythme_exact: "Variable",
  vitesse_musicale: "Variable", longueur_archet: "Variable", pression: "Variable",
  vitesse_archet: "Variable", point_contact: "Derrière chevalet", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "pp", description: "Son éolien, contemporain",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: metallique
},
{
  nom: "Crinière", technique: "Crins frottés", rythme_exact: "Rythme libre",
  vitesse_musicale: "Lento", longueur_archet: "Pleine", pression: "Nulle",
  vitesse_archet: "Très lente", point_contact: "Crins seuls", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "pppp", description: "Bruit blanc, effet contemporain",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: secco
},
{
  nom: "Martelé piqué", technique: "Martelé staccato", rythme_exact: "Croches",
  vitesse_musicale: "Allegro", longueur_archet: "⅛", pression: "Très forte",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "ff", description: "Attaque explosive très courte",
  epoque: romantique_moderne, puce_category: articule, style_musical: dramatique, caractere: marcato
},
{
  nom: "Détaché lourd", technique: "Détaché lourd", rythme_exact: "Noires",
  vitesse_musicale: "Lento – Adagio", longueur_archet: "Pleine", pression: "Forte",
  vitesse_archet: "Très lente", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "f – ff", description: "Symphonique, Brahms",
  epoque: romantique, puce_category: continu, style_musical: symphonique, caractere: maestoso
},
{
  nom: "Sautillé perlé", technique: "Sautillé perlé", rythme_exact: "Doubles égales",
  vitesse_musicale: "Allegro vivace", longueur_archet: "Point d'équilibre", pression: "Très légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis l'air", dynamique_typique: "p – mp", description: "Perlé, Mozart",
  epoque: classique, puce_category: sautille, style_musical: universel_style, caractere: leger
},
{
  nom: "Ondeggiando serré", technique: "Ondeggiando rapide", rythme_exact: "Sextolets",
  vitesse_musicale: "Presto", longueur_archet: "½", pression: "Légère",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp – mf", description: "Tremolo entre 2 cordes",
  epoque: romantique, puce_category: special, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Flautando", technique: "Flautando", rythme_exact: "Tenues", 
  vitesse_musicale: "Adagio", longueur_archet: "Pleine", pression: "Très légère",
  vitesse_archet: "Très lente", point_contact: "Sul tasto", angle_archet: "Incliné",
  type_attaque: "Depuis la corde", dynamique_typique: "pp", description: "Son de flûte, Mahler/Debussy",
  epoque: romantique_moderne, puce_category: special, style_musical: lyrique, caractere: flute
},
{
  nom: "Ponticello gratté", technique: "Gratté chevalet", rythme_exact: "Rythme libre",
  vitesse_musicale: "Variable", longueur_archet: "Courte", pression: "Forte",
  vitesse_archet: "Variable", point_contact: "Sul ponticello", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "f – ff", description: "Son strident, Bartók",
  epoque: moderne, puce_category: special, style_musical: effets, caractere: metallique
},
{
  nom: "Legato de 2", technique: "Legato par 2", rythme_exact: "Croches liées 2 par 2",
  vitesse_musicale: "Andante – Moderato", longueur_archet: "½", pression: "Moyenne",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp – mf", description: "Articulation classique, Mozart",
  epoque: classique, puce_category: continu, style_musical: universel_style, caractere: cantabile
},
{
  nom: "Legato de 4", technique: "Legato par 4", rythme_exact: "Doubles liées 4 par 4",
  vitesse_musicale: "Allegro", longueur_archet: "¾", pression: "Légère",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mp", description: "Gammes, études",
  epoque: classique_romantique, puce_category: continu, style_musical: pedagogique, caractere: neutre
},
{
  nom: "Legato de 8", technique: "Legato par 8", rythme_exact: "Doubles liées 8 par 8",
  vitesse_musicale: "Presto", longueur_archet: "Pleine", pression: "Très légère",
  vitesse_archet: "Très rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "p – mp", description: "Virtuosité, Paganini",
  epoque: romantique, puce_category: continu, style_musical: virtuosite, caractere: brillante
},
{
  nom: "Staccato de 4", technique: "Staccato par 4", rythme_exact: "Doubles détachées 4 par archet",
  vitesse_musicale: "Allegro", longueur_archet: "½", pression: "Moyenne",
  vitesse_archet: "Rapide", point_contact: "Naturel", angle_archet: "Plat",
  type_attaque: "Depuis la corde", dynamique_typique: "mf", description: "Staccato groupé, tiré ou poussé",
  epoque: classique, puce_category: articule, style_musical: universel_style, caractere: energico
},
{
  nom: "Violonistique", technique: "Coup d'archet baroque français", rythme_exact: "Inégales",
  vitesse_musicale: "Andante – Allegro", longueur_archet: "⅓", pression: "Légère",
  vitesse_archet: "Modérée", point_contact: "Naturel", angle_archet: "Incliné",
  type_attaque: "Depuis la corde", dynamique_typique: "mp", description: "Notes inégales, Lully/Couperin",
  epoque: baroque, puce_category: articule, style_musical: danse, caractere: danse_car
}]
CoupArchet.create!(coups)
# db/seeds.rb - Ajouts pour navigation
puts "Seeding compositeurs et oeuvres..."

bach = Compositeur.create!(nom: "J.S. Bach", epoque: baroque, nationalite: "Allemand")
mozart = Compositeur.create!(nom: "W.A. Mozart", epoque: classique, nationalite: "Autrichien")
paganini = Compositeur.create!(nom: "N. Paganini", epoque: romantique, nationalite: "Italien")

partita3 = Oeuvre.create!(titre: "Partita n°3 BWV 1006, Preludio", compositeur: bach, annee: 1720, style_musical: vivaldi_bach)
symphonie40 = Oeuvre.create!(titre: "Symphonie n°40 K.550", compositeur: mozart, annee: 1788, style_musical: symphonique)
caprice24 = Oeuvre.create!(titre: "Caprice n°24", compositeur: paganini, annee: 1817, style_musical: virtuosite)

# Lier coups d'archet à des exemples concrets
spiccato = CoupArchet.find_by(nom: "Spiccato")
ex1 = ExempleMusical.create!(
  oeuvre: partita3, 
  coup_archet: spiccato, 
  mesure: "mes. 1-8", 
  description: "Doubles croches spiccato au milieu, tempo Allegro"
)
Media.create!(exemple_musical: ex1, type_media: :video, url: "https://youtube.com/watch?v=xyz")
Media.create!(exemple_musical: ex1, type_media: :partition, url: "https://imslp.org/wiki/...")

# Tags pour recherche facettes
Tag.create!(nom: "Débutant")
Tag.create!(nom: "Orchestre")
Tag.create!(nom: "Solo")
Tag.create!(nom: "Examen DEM")

spiccato.tags << Tag.find_by(nom: "Orchestre")
spiccato.tags << Tag.find_by(nom: "Examen DEM")
