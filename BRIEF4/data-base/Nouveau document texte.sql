PGDMP     7                    z           product    11.16    11.16     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            +           1262    16431    product    DATABASE     �   CREATE DATABASE product WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE product;
             postgres    false            �            1259    16479    adminn    TABLE     t   CREATE TABLE public.adminn (
    id integer NOT NULL,
    name character varying,
    lastname character varying
);
    DROP TABLE public.adminn;
       public         postgres    false            �            1259    16495 	   categorie    TABLE     W   CREATE TABLE public.categorie (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.categorie;
       public         postgres    false            �            1259    16485    client    TABLE     t   CREATE TABLE public.client (
    id integer NOT NULL,
    name character varying,
    lastname character varying
);
    DROP TABLE public.client;
       public         postgres    false            �            1259    16452    produit    TABLE     �   CREATE TABLE public.produit (
    id integer NOT NULL,
    name character varying,
    prix integer,
    quantite integer,
    info character varying(9000),
    idcategorie integer,
    idadminn integer
);
    DROP TABLE public.produit;
       public         postgres    false            �            1259    16461    userr    TABLE     �   CREATE TABLE public.userr (
    id integer NOT NULL,
    pseudo character varying,
    email character varying,
    pasword character varying
);
    DROP TABLE public.userr;
       public         postgres    false            �            1259    16458    vote    TABLE     y   CREATE TABLE public.vote (
    idvote integer NOT NULL,
    note integer,
    idproduit integer,
    idclient integer
);
    DROP TABLE public.vote;
       public         postgres    false            #          0    16479    adminn 
   TABLE DATA               4   COPY public.adminn (id, name, lastname) FROM stdin;
    public       postgres    false    199          %          0    16495 	   categorie 
   TABLE DATA               -   COPY public.categorie (id, name) FROM stdin;
    public       postgres    false    201   A       $          0    16485    client 
   TABLE DATA               4   COPY public.client (id, name, lastname) FROM stdin;
    public       postgres    false    200   �                  0    16452    produit 
   TABLE DATA               X   COPY public.produit (id, name, prix, quantite, info, idcategorie, idadminn) FROM stdin;
    public       postgres    false    196   !       "          0    16461    userr 
   TABLE DATA               ;   COPY public.userr (id, pseudo, email, pasword) FROM stdin;
    public       postgres    false    198   c!       !          0    16458    vote 
   TABLE DATA               A   COPY public.vote (idvote, note, idproduit, idclient) FROM stdin;
    public       postgres    false    197   �!       �
           2606    16502    categorie categorie_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categorie DROP CONSTRAINT categorie_pkey;
       public         postgres    false    201            �
           2606    16492 	   adminn id 
   CONSTRAINT     G   ALTER TABLE ONLY public.adminn
    ADD CONSTRAINT id PRIMARY KEY (id);
 3   ALTER TABLE ONLY public.adminn DROP CONSTRAINT id;
       public         postgres    false    199            �
           2606    16494    client idclient 
   CONSTRAINT     M   ALTER TABLE ONLY public.client
    ADD CONSTRAINT idclient PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.client DROP CONSTRAINT idclient;
       public         postgres    false    200            �
           2606    16505    produit idproduit 
   CONSTRAINT     O   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT idproduit PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.produit DROP CONSTRAINT idproduit;
       public         postgres    false    196            �
           2606    16507    userr iduserr 
   CONSTRAINT     K   ALTER TABLE ONLY public.userr
    ADD CONSTRAINT iduserr PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.userr DROP CONSTRAINT iduserr;
       public         postgres    false    198            �
           2606    16509    vote idvote 
   CONSTRAINT     M   ALTER TABLE ONLY public.vote
    ADD CONSTRAINT idvote PRIMARY KEY (idvote);
 5   ALTER TABLE ONLY public.vote DROP CONSTRAINT idvote;
       public         postgres    false    197            �
           2606    16510    produit idadminn    FK CONSTRAINT     t   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT idadminn FOREIGN KEY (idadminn) REFERENCES public.categorie(id);
 :   ALTER TABLE ONLY public.produit DROP CONSTRAINT idadminn;
       public       postgres    false    196    2719    201            �
           2606    16515    vote idclient    FK CONSTRAINT     n   ALTER TABLE ONLY public.vote
    ADD CONSTRAINT idclient FOREIGN KEY (idclient) REFERENCES public.client(id);
 7   ALTER TABLE ONLY public.vote DROP CONSTRAINT idclient;
       public       postgres    false    2717    197    200            �
           2606    16520    vote idproduit    FK CONSTRAINT     q   ALTER TABLE ONLY public.vote
    ADD CONSTRAINT idproduit FOREIGN KEY (idproduit) REFERENCES public.produit(id);
 8   ALTER TABLE ONLY public.vote DROP CONSTRAINT idproduit;
       public       postgres    false    196    2709    197            �
           2606    16553    produit produit_idadminn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_idadminn_fkey FOREIGN KEY (idadminn) REFERENCES public.categorie(id);
 G   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_idadminn_fkey;
       public       postgres    false    2719    201    196            �
           2606    16548    vote vote_idclient_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.vote
    ADD CONSTRAINT vote_idclient_fkey FOREIGN KEY (idclient) REFERENCES public.client(id);
 A   ALTER TABLE ONLY public.vote DROP CONSTRAINT vote_idclient_fkey;
       public       postgres    false    2717    200    197            �
           2606    16533    vote vote_idproduit_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.vote
    ADD CONSTRAINT vote_idproduit_fkey FOREIGN KEY (idproduit) REFERENCES public.produit(id);
 B   ALTER TABLE ONLY public.vote DROP CONSTRAINT vote_idproduit_fkey;
       public       postgres    false    2709    197    196                       6104    16525    database_product    PUBLICATION     Y   CREATE PUBLICATION database_product WITH (publish = 'insert, update, delete, truncate');
 #   DROP PUBLICATION database_product;
             postgres    false            #      x�3�LL����LLJI������ 7��      %   O   x�E�K� �5='0�s7E��P�%��.���!����NN��3ښZ��5��C���Bۿ\P�9���>����      $   q   x�E���0뽏A����ٓ|�9K	��S@7+�l>=Zف���8Y���+K�\ꬿ}Ĵ
Ha��|������בu4����:H����{��FD>ۅ,(          2  x�]SKnA]�OQ;6��o K'
��B�EDljz�㆞n���JXqn�cn�I��8� YrW���^}ffVu���L�c3;7�;,)&�.ə��&�z�e����=���)��`w�@��iǺ;Ԕ �/���#��a��}�(�O`q+/�L-�^uj���7��u��{�J,pf��X<��w��Py�-��S`c9H5I\����Q�?7���Շ[3Q�����c�,
*A���FF��D��t{��v�1����o-^���*�{��Eiaρ�P�9����evr���BE��1HI���ƐzpZ�\o܏��?3׸e�(Oz��_ �,\B��2`�Nl�7�)uǿ�[lO�	���YJ#3�����ZҬ'֐�y���2�)AZ���c[?����$��P�ƜɅZZ���U*���3Fd������2�e%ZȎ��,�ċ�<?^�O�-��!����;�i:����˫��~(�ɢ�%)K����ir�q]����_˶;��S7��\���?7�	ؒ���S ��F��ɜ�W45-�$��%&#��AV~����`0��/�      "   v   x�u�1� �W�KI>��D�i�
pC�+���h��������Q��l�}Mq���U�mq��O��4�Y�h}�B���i�Q�����&Ɉ�P�=!��Wĳ�f�.{9      !   2   x�ɹ  ���[ҽ@/�_�,�cr6A(8$��焊;�z:Ƿ$}��g     