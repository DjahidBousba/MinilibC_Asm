# MinilibC_Asm
** Projet de 2ème année à {Epitech}. Reproduction de fonctions systèmes en Assembly x86-64 **

## Intro
Le but de ce projet est de créer une librairie dynamique via le language Assembleur afin de remplacer les fonctions systèmes issues du language C.

## Utilisation

### Pré-requis
  Vous devez **obligatoirement** avoir un environnement Linux afin de pouvoir lancer le programme.  

### Compilation
  Après avoir cloné le projet, exécutez la commande ```make``` dans le dossier ```Functions``` pour installer l'assembleur.
  
### Éxécution

  Après avoir réalisé cela, vous devez importer votre ```MinilibC``` afin qu'elle remplace la libraire C. via la commande suivante:

```
export LD_PRELOAD=./libasm.so
```

Sur MacOS:

```
export LD_LIBRARY_PATH=.
```
```
gcc -L. -lasm
```

## Fonctions disponibles

* Strlen
* Strchr
* Memset
* Memcpy
* Strcmp
* Memmove
* Strncmp
* Strcasecmp
* Rindex
* Strstr
* Strpbrk
* Strcspn

## Auteur

 * **Djahid Bousba** - [Djahid.Bousba](https://www.djahid-bousba.com/)
