PGDMP                         z        
   db_brief13    14.3    14.3 !    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    17017 
   db_brief13    DATABASE     f   CREATE DATABASE db_brief13 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE db_brief13;
                postgres    false            �            1259    17028    activite    TABLE     �   CREATE TABLE public.activite (
    id_activite integer NOT NULL,
    titre character varying(50),
    descriptif character varying(50),
    id_type_activite integer,
    date_debut date,
    date_fin date,
    etat boolean,
    id_responsable integer
);
    DROP TABLE public.activite;
       public         heap    postgres    false            �            1259    17018    admin    TABLE     �   CREATE TABLE public.admin (
    id integer NOT NULL,
    nom character varying(55),
    prenom character varying(55),
    password character varying(55),
    email character varying(55),
    telephone character varying(55)
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    17023    exercice    TABLE     �   CREATE TABLE public.exercice (
    id integer NOT NULL,
    "année" integer,
    datedebut date,
    datefin date,
    statut boolean
);
    DROP TABLE public.exercice;
       public         heap    postgres    false            �            1259    17066    exercie_activite    TABLE     m   CREATE TABLE public.exercie_activite (
    id_activite integer NOT NULL,
    id_exercice integer NOT NULL
);
 $   DROP TABLE public.exercie_activite;
       public         heap    postgres    false            �            1259    17033    participant    TABLE       CREATE TABLE public.participant (
    id_participant integer NOT NULL,
    fullname character varying(50),
    telephone character varying(50),
    email character varying(50),
    domaine character varying(50),
    structure character varying(50),
    id_responsable integer
);
    DROP TABLE public.participant;
       public         heap    postgres    false            �            1259    17071    participant_activite    TABLE     t   CREATE TABLE public.participant_activite (
    id_activite integer NOT NULL,
    id_participant integer NOT NULL
);
 (   DROP TABLE public.participant_activite;
       public         heap    postgres    false            �            1259    17043    responsable    TABLE       CREATE TABLE public.responsable (
    id_responsable integer NOT NULL,
    id_type_responsable integer,
    nom character varying(50),
    prenom character varying(50),
    telephone character varying(50),
    dommaine character varying(50),
    etat boolean
);
    DROP TABLE public.responsable;
       public         heap    postgres    false            �            1259    17038    type_activite    TABLE     _   CREATE TABLE public.type_activite (
    id integer NOT NULL,
    type character varying(50)
);
 !   DROP TABLE public.type_activite;
       public         heap    postgres    false            �            1259    17048    type_responsable    TABLE     j   CREATE TABLE public.type_responsable (
    id_type_responsable integer,
    type character varying(50)
);
 $   DROP TABLE public.type_responsable;
       public         heap    postgres    false                      0    17028    activite 
   TABLE DATA           �   COPY public.activite (id_activite, titre, descriptif, id_type_activite, date_debut, date_fin, etat, id_responsable) FROM stdin;
    public          postgres    false    211   �&                 0    17018    admin 
   TABLE DATA           L   COPY public.admin (id, nom, prenom, password, email, telephone) FROM stdin;
    public          postgres    false    209   �&                 0    17023    exercice 
   TABLE DATA           L   COPY public.exercice (id, "année", datedebut, datefin, statut) FROM stdin;
    public          postgres    false    210   �&                  0    17066    exercie_activite 
   TABLE DATA           D   COPY public.exercie_activite (id_activite, id_exercice) FROM stdin;
    public          postgres    false    216   '                 0    17033    participant 
   TABLE DATA           u   COPY public.participant (id_participant, fullname, telephone, email, domaine, structure, id_responsable) FROM stdin;
    public          postgres    false    212   !'       !          0    17071    participant_activite 
   TABLE DATA           K   COPY public.participant_activite (id_activite, id_participant) FROM stdin;
    public          postgres    false    217   >'                 0    17043    responsable 
   TABLE DATA           r   COPY public.responsable (id_responsable, id_type_responsable, nom, prenom, telephone, dommaine, etat) FROM stdin;
    public          postgres    false    214   ['                 0    17038    type_activite 
   TABLE DATA           1   COPY public.type_activite (id, type) FROM stdin;
    public          postgres    false    213   x'                 0    17048    type_responsable 
   TABLE DATA           E   COPY public.type_responsable (id_type_responsable, type) FROM stdin;
    public          postgres    false    215   �'       �           2606    17032    activite activite_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.activite
    ADD CONSTRAINT activite_pkey PRIMARY KEY (id_activite);
 @   ALTER TABLE ONLY public.activite DROP CONSTRAINT activite_pkey;
       public            postgres    false    211            |           2606    17022    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    209            ~           2606    17027    exercice exercice_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.exercice
    ADD CONSTRAINT exercice_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.exercice DROP CONSTRAINT exercice_pkey;
       public            postgres    false    210            �           2606    17070 &   exercie_activite exercie_activite_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.exercie_activite
    ADD CONSTRAINT exercie_activite_pkey PRIMARY KEY (id_activite, id_exercice);
 P   ALTER TABLE ONLY public.exercie_activite DROP CONSTRAINT exercie_activite_pkey;
       public            postgres    false    216    216            �           2606    17075 .   participant_activite participant_activite_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.participant_activite
    ADD CONSTRAINT participant_activite_pkey PRIMARY KEY (id_activite, id_participant);
 X   ALTER TABLE ONLY public.participant_activite DROP CONSTRAINT participant_activite_pkey;
       public            postgres    false    217    217            �           2606    17037    participant participant_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.participant
    ADD CONSTRAINT participant_pkey PRIMARY KEY (id_participant);
 F   ALTER TABLE ONLY public.participant DROP CONSTRAINT participant_pkey;
       public            postgres    false    212            �           2606    17047    responsable responsable_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_pkey PRIMARY KEY (id_responsable);
 F   ALTER TABLE ONLY public.responsable DROP CONSTRAINT responsable_pkey;
       public            postgres    false    214            �           2606    17042     type_activite type_activite_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.type_activite
    ADD CONSTRAINT type_activite_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.type_activite DROP CONSTRAINT type_activite_pkey;
       public            postgres    false    213            �           2606    17061    participant id_responsable    FK CONSTRAINT     �   ALTER TABLE ONLY public.participant
    ADD CONSTRAINT id_responsable FOREIGN KEY (id_responsable) REFERENCES public.participant(id_participant);
 D   ALTER TABLE ONLY public.participant DROP CONSTRAINT id_responsable;
       public          postgres    false    212    3202    212            �           2606    17056    activite id_type_activite    FK CONSTRAINT     �   ALTER TABLE ONLY public.activite
    ADD CONSTRAINT id_type_activite FOREIGN KEY (id_type_activite) REFERENCES public.activite(id_activite);
 C   ALTER TABLE ONLY public.activite DROP CONSTRAINT id_type_activite;
       public          postgres    false    3200    211    211            �           2606    17051    responsable id_type_responsable    FK CONSTRAINT     �   ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT id_type_responsable FOREIGN KEY (id_type_responsable) REFERENCES public.responsable(id_responsable);
 I   ALTER TABLE ONLY public.responsable DROP CONSTRAINT id_type_responsable;
       public          postgres    false    214    3206    214                  x������ � �            x������ � �            x������ � �             x������ � �            x������ � �      !      x������ � �            x������ � �            x������ � �            x������ � �     