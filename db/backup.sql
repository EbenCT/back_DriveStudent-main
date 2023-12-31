PGDMP     .    :    	            {            driveStudent    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16643    driveStudent    DATABASE     �   CREATE DATABASE "driveStudent" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "driveStudent";
                postgres    false            �            1259    16654    brevet    TABLE     �  CREATE TABLE public.brevet (
    id integer NOT NULL,
    numero integer NOT NULL,
    fech_emi date NOT NULL,
    fech_ven date NOT NULL,
    categoria character varying(1) NOT NULL,
    img_frontal character varying,
    img_reverso character varying,
    estado boolean DEFAULT true NOT NULL,
    id_usuario integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.brevet;
       public         heap    postgres    false            �            1259    16653    brevet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brevet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brevet_id_seq;
       public          postgres    false    217            �           0    0    brevet_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brevet_id_seq OWNED BY public.brevet.id;
          public          postgres    false    216            �            1259    16906    brevet_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.brevet_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.brevet_id_usuario_seq;
       public          postgres    false    217            �           0    0    brevet_id_usuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.brevet_id_usuario_seq OWNED BY public.brevet.id_usuario;
          public          postgres    false    242            �            1259    16825    calificacion_comentario    TABLE     <  CREATE TABLE public.calificacion_comentario (
    id integer NOT NULL,
    comentario character varying,
    calificacion character(1),
    id_usuario integer,
    id_soliviaje integer,
    id_carrera integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
 +   DROP TABLE public.calificacion_comentario;
       public         heap    postgres    false            �            1259    16824 &   calificacion_comentario_id_cal_com_seq    SEQUENCE     �   CREATE SEQUENCE public.calificacion_comentario_id_cal_com_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.calificacion_comentario_id_cal_com_seq;
       public          postgres    false    237            �           0    0 &   calificacion_comentario_id_cal_com_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.calificacion_comentario_id_cal_com_seq OWNED BY public.calificacion_comentario.id;
          public          postgres    false    236            �            1259    17125 &   calificacion_comentario_id_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public.calificacion_comentario_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.calificacion_comentario_id_carrera_seq;
       public          postgres    false    237            �           0    0 &   calificacion_comentario_id_carrera_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.calificacion_comentario_id_carrera_seq OWNED BY public.calificacion_comentario.id_carrera;
          public          postgres    false    253            �            1259    17117 (   calificacion_comentario_id_soliviaje_seq    SEQUENCE     �   CREATE SEQUENCE public.calificacion_comentario_id_soliviaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.calificacion_comentario_id_soliviaje_seq;
       public          postgres    false    237            �           0    0 (   calificacion_comentario_id_soliviaje_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.calificacion_comentario_id_soliviaje_seq OWNED BY public.calificacion_comentario.id_soliviaje;
          public          postgres    false    252            �            1259    17109 &   calificacion_comentario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.calificacion_comentario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.calificacion_comentario_id_usuario_seq;
       public          postgres    false    237            �           0    0 &   calificacion_comentario_id_usuario_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.calificacion_comentario_id_usuario_seq OWNED BY public.calificacion_comentario.id_usuario;
          public          postgres    false    251            �            1259    16672 
   carac_espe    TABLE       CREATE TABLE public.carac_espe (
    id integer NOT NULL,
    caracteristica character varying NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    id_vehiculo integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.carac_espe;
       public         heap    postgres    false            �            1259    16671    carac_espe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carac_espe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.carac_espe_id_seq;
       public          postgres    false    221            �           0    0    carac_espe_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.carac_espe_id_seq OWNED BY public.carac_espe.id;
          public          postgres    false    220            �            1259    16966    carac_espe_id_vehiculo_seq    SEQUENCE     �   CREATE SEQUENCE public.carac_espe_id_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.carac_espe_id_vehiculo_seq;
       public          postgres    false    221            �           0    0    carac_espe_id_vehiculo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.carac_espe_id_vehiculo_seq OWNED BY public.carac_espe.id_vehiculo;
          public          postgres    false    245            �            1259    16739    carrera    TABLE     V  CREATE TABLE public.carrera (
    id integer NOT NULL,
    estado_carrera boolean DEFAULT false,
    hora_p time without time zone,
    hora_d time without time zone,
    id_pasajero integer NOT NULL,
    id_conductor integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            �            1259    16738    carrera_id_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrera_id_carrera_seq;
       public          postgres    false    229            �           0    0    carrera_id_carrera_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.carrera_id_carrera_seq OWNED BY public.carrera.id;
          public          postgres    false    228            �            1259    17065    carrera_id_conductor_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_id_conductor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.carrera_id_conductor_seq;
       public          postgres    false    229            �           0    0    carrera_id_conductor_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.carrera_id_conductor_seq OWNED BY public.carrera.id_conductor;
          public          postgres    false    248            �            1259    17059    carrera_id_pasajero_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_id_pasajero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.carrera_id_pasajero_seq;
       public          postgres    false    229            �           0    0    carrera_id_pasajero_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.carrera_id_pasajero_seq OWNED BY public.carrera.id_pasajero;
          public          postgres    false    247            �            1259    16802    pago    TABLE     U  CREATE TABLE public.pago (
    id integer NOT NULL,
    costo real,
    estado_pago boolean DEFAULT false NOT NULL,
    costo_total real NOT NULL,
    id_targeta integer,
    id_carrera integer,
    id_soli_viaje integer,
    estado boolean DEFAULT true,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    24595    pago_id_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pago_id_carrera_seq;
       public          postgres    false    235            �           0    0    pago_id_carrera_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pago_id_carrera_seq OWNED BY public.pago.id_carrera;
          public          postgres    false    255            �            1259    16801    pago_id_pago_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pago_id_pago_seq;
       public          postgres    false    235            �           0    0    pago_id_pago_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id;
          public          postgres    false    234                        1259    24600    pago_id_soli_viaje_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_soli_viaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pago_id_soli_viaje_seq;
       public          postgres    false    235            �           0    0    pago_id_soli_viaje_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pago_id_soli_viaje_seq OWNED BY public.pago.id_soli_viaje;
          public          postgres    false    256            �            1259    24590    pago_id_targeta_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_targeta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pago_id_targeta_seq;
       public          postgres    false    235            �           0    0    pago_id_targeta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pago_id_targeta_seq OWNED BY public.pago.id_targeta;
          public          postgres    false    254            �            1259    16891    preferencias    TABLE        CREATE TABLE public.preferencias (
    id integer NOT NULL,
    preferencia character varying NOT NULL,
    estado boolean DEFAULT true,
    id_usuario integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
     DROP TABLE public.preferencias;
       public         heap    postgres    false            �            1259    16889    prefencias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prefencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prefencias_id_seq;
       public          postgres    false    241            �           0    0    prefencias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.prefencias_id_seq OWNED BY public.preferencias.id;
          public          postgres    false    239            �            1259    16890    prefencias_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.prefencias_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.prefencias_id_usuario_seq;
       public          postgres    false    241            �           0    0    prefencias_id_usuario_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.prefencias_id_usuario_seq OWNED BY public.preferencias.id_usuario;
          public          postgres    false    240            �            1259    16778    punto    TABLE     `  CREATE TABLE public.punto (
    id integer NOT NULL,
    lat double precision NOT NULL,
    long double precision NOT NULL,
    nom_lugar character varying(50),
    estado boolean DEFAULT true,
    id_ruta integer,
    id_soli_viaje integer,
    id_carrera integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.punto;
       public         heap    postgres    false                       1259    24634    punto_id_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public.punto_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.punto_id_carrera_seq;
       public          postgres    false    233            �           0    0    punto_id_carrera_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.punto_id_carrera_seq OWNED BY public.punto.id_carrera;
          public          postgres    false    259            �            1259    16777    punto_id_punto_seq    SEQUENCE     �   CREATE SEQUENCE public.punto_id_punto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.punto_id_punto_seq;
       public          postgres    false    233            �           0    0    punto_id_punto_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.punto_id_punto_seq OWNED BY public.punto.id;
          public          postgres    false    232                       1259    24624    punto_id_ruta_seq    SEQUENCE     �   CREATE SEQUENCE public.punto_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.punto_id_ruta_seq;
       public          postgres    false    233            �           0    0    punto_id_ruta_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.punto_id_ruta_seq OWNED BY public.punto.id_ruta;
          public          postgres    false    257                       1259    24629    punto_id_soli_viaje_seq    SEQUENCE     �   CREATE SEQUENCE public.punto_id_soli_viaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.punto_id_soli_viaje_seq;
       public          postgres    false    233            �           0    0    punto_id_soli_viaje_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.punto_id_soli_viaje_seq OWNED BY public.punto.id_soli_viaje;
          public          postgres    false    258            �            1259    16645    rols    TABLE     �   CREATE TABLE public.rols (
    id integer NOT NULL,
    nombre_rol character varying NOT NULL,
    descripcion character varying,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public.rols;
       public         heap    postgres    false            �            1259    16644 
   rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rol_id_seq;
       public          postgres    false    215            �           0    0 
   rol_id_seq    SEQUENCE OWNED BY     :   ALTER SEQUENCE public.rol_id_seq OWNED BY public.rols.id;
          public          postgres    false    214            �            1259    16725    ruta    TABLE     S  CREATE TABLE public.ruta (
    id integer NOT NULL,
    strpolyline character varying,
    estado_cap boolean,
    cant_pasajero character(1),
    estado boolean DEFAULT true NOT NULL,
    id_usuario integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    hora_p time without time zone
);
    DROP TABLE public.ruta;
       public         heap    postgres    false            �            1259    16724    ruta_id_ruta_seq    SEQUENCE     �   CREATE SEQUENCE public.ruta_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ruta_id_ruta_seq;
       public          postgres    false    227            �           0    0    ruta_id_ruta_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.ruta_id_ruta_seq OWNED BY public.ruta.id;
          public          postgres    false    226            �            1259    16997    ruta_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.ruta_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ruta_id_usuario_seq;
       public          postgres    false    227            �           0    0    ruta_id_usuario_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ruta_id_usuario_seq OWNED BY public.ruta.id_usuario;
          public          postgres    false    246            �            1259    16759    solicitud_viaje    TABLE     e  CREATE TABLE public.solicitud_viaje (
    id integer NOT NULL,
    strpolyline character varying,
    hora_p time without time zone,
    cant_pasajeros character(1),
    estado boolean DEFAULT true NOT NULL,
    id_usuario integer NOT NULL,
    id_ruta integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 #   DROP TABLE public.solicitud_viaje;
       public         heap    postgres    false            �            1259    17090    solicitud_viaje_id_ruta_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_viaje_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.solicitud_viaje_id_ruta_seq;
       public          postgres    false    231            �           0    0    solicitud_viaje_id_ruta_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.solicitud_viaje_id_ruta_seq OWNED BY public.solicitud_viaje.id_ruta;
          public          postgres    false    250            �            1259    16758     solicitud_viaje_id_sol_viaje_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_viaje_id_sol_viaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.solicitud_viaje_id_sol_viaje_seq;
       public          postgres    false    231            �           0    0     solicitud_viaje_id_sol_viaje_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.solicitud_viaje_id_sol_viaje_seq OWNED BY public.solicitud_viaje.id;
          public          postgres    false    230            �            1259    17082    solicitud_viaje_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_viaje_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.solicitud_viaje_id_usuario_seq;
       public          postgres    false    231            �           0    0    solicitud_viaje_id_usuario_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.solicitud_viaje_id_usuario_seq OWNED BY public.solicitud_viaje.id_usuario;
          public          postgres    false    249            �            1259    16711    targeta    TABLE     x  CREATE TABLE public.targeta (
    id integer NOT NULL,
    nom_titular character varying(30) NOT NULL,
    csv character varying NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    id_usuario integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    num_targeta character varying(16) NOT NULL,
    fech_ven date NOT NULL
);
    DROP TABLE public.targeta;
       public         heap    postgres    false            �            1259    16710    targeta_id_targeta_seq    SEQUENCE     �   CREATE SEQUENCE public.targeta_id_targeta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.targeta_id_targeta_seq;
       public          postgres    false    225            �           0    0    targeta_id_targeta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.targeta_id_targeta_seq OWNED BY public.targeta.id;
          public          postgres    false    224            �            1259    16934    targeta_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.targeta_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.targeta_id_usuario_seq;
       public          postgres    false    225            �           0    0    targeta_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.targeta_id_usuario_seq OWNED BY public.targeta.id_usuario;
          public          postgres    false    244            �            1259    16686    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    correo character varying NOT NULL,
    password character varying NOT NULL,
    nombre character varying NOT NULL,
    nro_registro character(9) NOT NULL,
    celular character(8),
    img character varying,
    carrera character varying(20),
    google boolean,
    sexo boolean NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp with time zone,
    id_rol integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16685    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    223            �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuarios.id;
          public          postgres    false    222            �            1259    16866    usuarios_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuarios_id_rol_seq;
       public          postgres    false    223            �           0    0    usuarios_id_rol_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuarios_id_rol_seq OWNED BY public.usuarios.id_rol;
          public          postgres    false    238            �            1259    16663    vehiculo    TABLE     �  CREATE TABLE public.vehiculo (
    id integer NOT NULL,
    num_placa character varying(6) NOT NULL,
    modelo character varying(30) NOT NULL,
    "año" character varying(4) NOT NULL,
    cap_pasajeros character varying(1),
    img character varying,
    estado boolean DEFAULT true NOT NULL,
    id_usuario integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.vehiculo;
       public         heap    postgres    false            �            1259    16662    vehiculo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vehiculo_id_seq;
       public          postgres    false    219            �           0    0    vehiculo_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vehiculo_id_seq OWNED BY public.vehiculo.id;
          public          postgres    false    218            �            1259    16921    vehiculo_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.vehiculo_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.vehiculo_id_usuario_seq;
       public          postgres    false    219            �           0    0    vehiculo_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.vehiculo_id_usuario_seq OWNED BY public.vehiculo.id_usuario;
          public          postgres    false    243            �           2604    16657 	   brevet id    DEFAULT     f   ALTER TABLE ONLY public.brevet ALTER COLUMN id SET DEFAULT nextval('public.brevet_id_seq'::regclass);
 8   ALTER TABLE public.brevet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16907    brevet id_usuario    DEFAULT     v   ALTER TABLE ONLY public.brevet ALTER COLUMN id_usuario SET DEFAULT nextval('public.brevet_id_usuario_seq'::regclass);
 @   ALTER TABLE public.brevet ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    242    217            �           2604    16828    calificacion_comentario id    DEFAULT     �   ALTER TABLE ONLY public.calificacion_comentario ALTER COLUMN id SET DEFAULT nextval('public.calificacion_comentario_id_cal_com_seq'::regclass);
 I   ALTER TABLE public.calificacion_comentario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16675    carac_espe id    DEFAULT     n   ALTER TABLE ONLY public.carac_espe ALTER COLUMN id SET DEFAULT nextval('public.carac_espe_id_seq'::regclass);
 <   ALTER TABLE public.carac_espe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16967    carac_espe id_vehiculo    DEFAULT     �   ALTER TABLE ONLY public.carac_espe ALTER COLUMN id_vehiculo SET DEFAULT nextval('public.carac_espe_id_vehiculo_seq'::regclass);
 E   ALTER TABLE public.carac_espe ALTER COLUMN id_vehiculo DROP DEFAULT;
       public          postgres    false    245    221            �           2604    16742 
   carrera id    DEFAULT     p   ALTER TABLE ONLY public.carrera ALTER COLUMN id SET DEFAULT nextval('public.carrera_id_carrera_seq'::regclass);
 9   ALTER TABLE public.carrera ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17060    carrera id_pasajero    DEFAULT     z   ALTER TABLE ONLY public.carrera ALTER COLUMN id_pasajero SET DEFAULT nextval('public.carrera_id_pasajero_seq'::regclass);
 B   ALTER TABLE public.carrera ALTER COLUMN id_pasajero DROP DEFAULT;
       public          postgres    false    247    229            �           2604    17066    carrera id_conductor    DEFAULT     |   ALTER TABLE ONLY public.carrera ALTER COLUMN id_conductor SET DEFAULT nextval('public.carrera_id_conductor_seq'::regclass);
 C   ALTER TABLE public.carrera ALTER COLUMN id_conductor DROP DEFAULT;
       public          postgres    false    248    229            �           2604    16805    pago id    DEFAULT     g   ALTER TABLE ONLY public.pago ALTER COLUMN id SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);
 6   ALTER TABLE public.pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16894    preferencias id    DEFAULT     p   ALTER TABLE ONLY public.preferencias ALTER COLUMN id SET DEFAULT nextval('public.prefencias_id_seq'::regclass);
 >   ALTER TABLE public.preferencias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    241    241            �           2604    16896    preferencias id_usuario    DEFAULT     �   ALTER TABLE ONLY public.preferencias ALTER COLUMN id_usuario SET DEFAULT nextval('public.prefencias_id_usuario_seq'::regclass);
 F   ALTER TABLE public.preferencias ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    16781    punto id    DEFAULT     j   ALTER TABLE ONLY public.punto ALTER COLUMN id SET DEFAULT nextval('public.punto_id_punto_seq'::regclass);
 7   ALTER TABLE public.punto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16648    rols id    DEFAULT     a   ALTER TABLE ONLY public.rols ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);
 6   ALTER TABLE public.rols ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16728    ruta id    DEFAULT     g   ALTER TABLE ONLY public.ruta ALTER COLUMN id SET DEFAULT nextval('public.ruta_id_ruta_seq'::regclass);
 6   ALTER TABLE public.ruta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16998    ruta id_usuario    DEFAULT     r   ALTER TABLE ONLY public.ruta ALTER COLUMN id_usuario SET DEFAULT nextval('public.ruta_id_usuario_seq'::regclass);
 >   ALTER TABLE public.ruta ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    246    227            �           2604    16762    solicitud_viaje id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_viaje ALTER COLUMN id SET DEFAULT nextval('public.solicitud_viaje_id_sol_viaje_seq'::regclass);
 A   ALTER TABLE public.solicitud_viaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    17083    solicitud_viaje id_usuario    DEFAULT     �   ALTER TABLE ONLY public.solicitud_viaje ALTER COLUMN id_usuario SET DEFAULT nextval('public.solicitud_viaje_id_usuario_seq'::regclass);
 I   ALTER TABLE public.solicitud_viaje ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    249    231            �           2604    17091    solicitud_viaje id_ruta    DEFAULT     �   ALTER TABLE ONLY public.solicitud_viaje ALTER COLUMN id_ruta SET DEFAULT nextval('public.solicitud_viaje_id_ruta_seq'::regclass);
 F   ALTER TABLE public.solicitud_viaje ALTER COLUMN id_ruta DROP DEFAULT;
       public          postgres    false    250    231            �           2604    16714 
   targeta id    DEFAULT     p   ALTER TABLE ONLY public.targeta ALTER COLUMN id SET DEFAULT nextval('public.targeta_id_targeta_seq'::regclass);
 9   ALTER TABLE public.targeta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16935    targeta id_usuario    DEFAULT     x   ALTER TABLE ONLY public.targeta ALTER COLUMN id_usuario SET DEFAULT nextval('public.targeta_id_usuario_seq'::regclass);
 A   ALTER TABLE public.targeta ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    244    225            �           2604    16689    usuarios id    DEFAULT     q   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16867    usuarios id_rol    DEFAULT     r   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_rol SET DEFAULT nextval('public.usuarios_id_rol_seq'::regclass);
 >   ALTER TABLE public.usuarios ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    238    223            �           2604    16666    vehiculo id    DEFAULT     j   ALTER TABLE ONLY public.vehiculo ALTER COLUMN id SET DEFAULT nextval('public.vehiculo_id_seq'::regclass);
 :   ALTER TABLE public.vehiculo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16922    vehiculo id_usuario    DEFAULT     z   ALTER TABLE ONLY public.vehiculo ALTER COLUMN id_usuario SET DEFAULT nextval('public.vehiculo_id_usuario_seq'::regclass);
 B   ALTER TABLE public.vehiculo ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    243    219            �          0    16654    brevet 
   TABLE DATA           �   COPY public.brevet (id, numero, fech_emi, fech_ven, categoria, img_frontal, img_reverso, estado, id_usuario, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ��       �          0    16825    calificacion_comentario 
   TABLE DATA           �   COPY public.calificacion_comentario (id, comentario, calificacion, id_usuario, id_soliviaje, id_carrera, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    237   4�       �          0    16672 
   carac_espe 
   TABLE DATA           g   COPY public.carac_espe (id, caracteristica, estado, id_vehiculo, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   ��       �          0    16739    carrera 
   TABLE DATA           �   COPY public.carrera (id, estado_carrera, hora_p, hora_d, id_pasajero, id_conductor, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    229   ��       �          0    16802    pago 
   TABLE DATA           �   COPY public.pago (id, costo, estado_pago, costo_total, id_targeta, id_carrera, id_soli_viaje, estado, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �       �          0    16891    preferencias 
   TABLE DATA           e   COPY public.preferencias (id, preferencia, estado, id_usuario, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    241   l�       �          0    16778    punto 
   TABLE DATA              COPY public.punto (id, lat, long, nom_lugar, estado, id_ruta, id_soli_viaje, id_carrera, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   ��       �          0    16645    rols 
   TABLE DATA           U   COPY public.rols (id, nombre_rol, descripcion, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   &�       �          0    16725    ruta 
   TABLE DATA           �   COPY public.ruta (id, strpolyline, estado_cap, cant_pasajero, estado, id_usuario, "createdAt", "updatedAt", hora_p) FROM stdin;
    public          postgres    false    227   ��       �          0    16759    solicitud_viaje 
   TABLE DATA           �   COPY public.solicitud_viaje (id, strpolyline, hora_p, cant_pasajeros, estado, id_usuario, id_ruta, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   Z�       �          0    16711    targeta 
   TABLE DATA           |   COPY public.targeta (id, nom_titular, csv, estado, id_usuario, "createdAt", "updatedAt", num_targeta, fech_ven) FROM stdin;
    public          postgres    false    225   ��       �          0    16686    usuarios 
   TABLE DATA           �   COPY public.usuarios (id, correo, password, nombre, nro_registro, celular, img, carrera, google, sexo, estado, "createdAt", "updatedAt", id_rol) FROM stdin;
    public          postgres    false    223   ��       �          0    16663    vehiculo 
   TABLE DATA           �   COPY public.vehiculo (id, num_placa, modelo, "año", cap_pasajeros, img, estado, id_usuario, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   ��       �           0    0    brevet_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brevet_id_seq', 3, true);
          public          postgres    false    216            �           0    0    brevet_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.brevet_id_usuario_seq', 1, false);
          public          postgres    false    242            �           0    0 &   calificacion_comentario_id_cal_com_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.calificacion_comentario_id_cal_com_seq', 2, true);
          public          postgres    false    236            �           0    0 &   calificacion_comentario_id_carrera_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.calificacion_comentario_id_carrera_seq', 1, true);
          public          postgres    false    253            �           0    0 (   calificacion_comentario_id_soliviaje_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.calificacion_comentario_id_soliviaje_seq', 1, false);
          public          postgres    false    252            �           0    0 &   calificacion_comentario_id_usuario_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.calificacion_comentario_id_usuario_seq', 1, false);
          public          postgres    false    251            �           0    0    carac_espe_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.carac_espe_id_seq', 2, true);
          public          postgres    false    220            �           0    0    carac_espe_id_vehiculo_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.carac_espe_id_vehiculo_seq', 1, false);
          public          postgres    false    245            �           0    0    carrera_id_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrera_id_carrera_seq', 1, false);
          public          postgres    false    228            �           0    0    carrera_id_conductor_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.carrera_id_conductor_seq', 1, false);
          public          postgres    false    248            �           0    0    carrera_id_pasajero_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.carrera_id_pasajero_seq', 1, false);
          public          postgres    false    247            �           0    0    pago_id_carrera_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pago_id_carrera_seq', 1, false);
          public          postgres    false    255            �           0    0    pago_id_pago_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pago_id_pago_seq', 2, true);
          public          postgres    false    234            �           0    0    pago_id_soli_viaje_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pago_id_soli_viaje_seq', 1, false);
          public          postgres    false    256            �           0    0    pago_id_targeta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pago_id_targeta_seq', 1, false);
          public          postgres    false    254            �           0    0    prefencias_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.prefencias_id_seq', 3, true);
          public          postgres    false    239            �           0    0    prefencias_id_usuario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.prefencias_id_usuario_seq', 2, true);
          public          postgres    false    240            �           0    0    punto_id_carrera_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.punto_id_carrera_seq', 1, false);
          public          postgres    false    259            �           0    0    punto_id_punto_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.punto_id_punto_seq', 2, true);
          public          postgres    false    232            �           0    0    punto_id_ruta_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.punto_id_ruta_seq', 1, false);
          public          postgres    false    257            �           0    0    punto_id_soli_viaje_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.punto_id_soli_viaje_seq', 1, false);
          public          postgres    false    258            �           0    0 
   rol_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.rol_id_seq', 5, true);
          public          postgres    false    214                        0    0    ruta_id_ruta_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ruta_id_ruta_seq', 4, true);
          public          postgres    false    226                       0    0    ruta_id_usuario_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ruta_id_usuario_seq', 3, true);
          public          postgres    false    246                       0    0    solicitud_viaje_id_ruta_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.solicitud_viaje_id_ruta_seq', 1, false);
          public          postgres    false    250                       0    0     solicitud_viaje_id_sol_viaje_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.solicitud_viaje_id_sol_viaje_seq', 1, true);
          public          postgres    false    230                       0    0    solicitud_viaje_id_usuario_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.solicitud_viaje_id_usuario_seq', 1, false);
          public          postgres    false    249                       0    0    targeta_id_targeta_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.targeta_id_targeta_seq', 5, true);
          public          postgres    false    224                       0    0    targeta_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.targeta_id_usuario_seq', 1, false);
          public          postgres    false    244                       0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 6, true);
          public          postgres    false    222                       0    0    usuarios_id_rol_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usuarios_id_rol_seq', 1, false);
          public          postgres    false    238            	           0    0    vehiculo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vehiculo_id_seq', 2, true);
          public          postgres    false    218            
           0    0    vehiculo_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.vehiculo_id_usuario_seq', 1, false);
          public          postgres    false    243            �           2606    16915    brevet pk_brevet 
   CONSTRAINT     N   ALTER TABLE ONLY public.brevet
    ADD CONSTRAINT pk_brevet PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brevet DROP CONSTRAINT pk_brevet;
       public            postgres    false    217            �           2606    16832 "   calificacion_comentario pk_cal_com 
   CONSTRAINT     `   ALTER TABLE ONLY public.calificacion_comentario
    ADD CONSTRAINT pk_cal_com PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.calificacion_comentario DROP CONSTRAINT pk_cal_com;
       public            postgres    false    237            �           2606    16975    carac_espe pk_carac_espe 
   CONSTRAINT     V   ALTER TABLE ONLY public.carac_espe
    ADD CONSTRAINT pk_carac_espe PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.carac_espe DROP CONSTRAINT pk_carac_espe;
       public            postgres    false    221            �           2606    16747    carrera pk_carrera 
   CONSTRAINT     P   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT pk_carrera PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.carrera DROP CONSTRAINT pk_carrera;
       public            postgres    false    229            �           2606    24621    pago pk_pago 
   CONSTRAINT     J   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pk_pago PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.pago DROP CONSTRAINT pk_pago;
       public            postgres    false    235            �           2606    16900    preferencias pk_preferencia 
   CONSTRAINT     Y   ALTER TABLE ONLY public.preferencias
    ADD CONSTRAINT pk_preferencia PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.preferencias DROP CONSTRAINT pk_preferencia;
       public            postgres    false    241            �           2606    24640    punto pk_punto 
   CONSTRAINT     L   ALTER TABLE ONLY public.punto
    ADD CONSTRAINT pk_punto PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.punto DROP CONSTRAINT pk_punto;
       public            postgres    false    233            �           2606    16652    rols pk_rol 
   CONSTRAINT     I   ALTER TABLE ONLY public.rols
    ADD CONSTRAINT pk_rol PRIMARY KEY (id);
 5   ALTER TABLE ONLY public.rols DROP CONSTRAINT pk_rol;
       public            postgres    false    215            �           2606    17005    ruta pk_ruta 
   CONSTRAINT     J   ALTER TABLE ONLY public.ruta
    ADD CONSTRAINT pk_ruta PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ruta DROP CONSTRAINT pk_ruta;
       public            postgres    false    227            �           2606    16766    solicitud_viaje pk_sol_viaje 
   CONSTRAINT     Z   ALTER TABLE ONLY public.solicitud_viaje
    ADD CONSTRAINT pk_sol_viaje PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.solicitud_viaje DROP CONSTRAINT pk_sol_viaje;
       public            postgres    false    231            �           2606    16718    targeta pk_tageta 
   CONSTRAINT     O   ALTER TABLE ONLY public.targeta
    ADD CONSTRAINT pk_tageta PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.targeta DROP CONSTRAINT pk_tageta;
       public            postgres    false    225            �           2606    16694    usuarios pk_usuario 
   CONSTRAINT     Q   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuario;
       public            postgres    false    223            �           2606    16670    vehiculo pk_vehiculo 
   CONSTRAINT     R   ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT pk_vehiculo PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT pk_vehiculo;
       public            postgres    false    219                       2606    17143 "   calificacion_comentario fk_carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_comentario
    ADD CONSTRAINT fk_carrera FOREIGN KEY (id_carrera) REFERENCES public.carrera(id) NOT VALID;
 L   ALTER TABLE ONLY public.calificacion_comentario DROP CONSTRAINT fk_carrera;
       public          postgres    false    229    237    3304                        2606    24610    pago fk_carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_carrera FOREIGN KEY (id_carrera) REFERENCES public.carrera(id) NOT VALID;
 9   ALTER TABLE ONLY public.pago DROP CONSTRAINT fk_carrera;
       public          postgres    false    3304    235    229            �           2606    24646    punto fk_carrera    FK CONSTRAINT     ~   ALTER TABLE ONLY public.punto
    ADD CONSTRAINT fk_carrera FOREIGN KEY (id_carrera) REFERENCES public.carrera(id) NOT VALID;
 :   ALTER TABLE ONLY public.punto DROP CONSTRAINT fk_carrera;
       public          postgres    false    233    3304    229            �           2606    17076    carrera fk_conductor    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT fk_conductor FOREIGN KEY (id_conductor) REFERENCES public.usuarios(id) NOT VALID;
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT fk_conductor;
       public          postgres    false    229    3298    223            �           2606    17071    carrera fk_pasajero    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT fk_pasajero FOREIGN KEY (id_pasajero) REFERENCES public.usuarios(id) NOT VALID;
 =   ALTER TABLE ONLY public.carrera DROP CONSTRAINT fk_pasajero;
       public          postgres    false    223    229    3298                       2606    16901    preferencias fk_preferencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.preferencias
    ADD CONSTRAINT fk_preferencia FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 E   ALTER TABLE ONLY public.preferencias DROP CONSTRAINT fk_preferencia;
       public          postgres    false    3298    241    223            �           2606    16874    usuarios fk_rol    FK CONSTRAINT     v   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_rol FOREIGN KEY (id_rol) REFERENCES public.rols(id) NOT VALID;
 9   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_rol;
       public          postgres    false    223    3290    215            �           2606    17104    solicitud_viaje fk_ruta    FK CONSTRAINT        ALTER TABLE ONLY public.solicitud_viaje
    ADD CONSTRAINT fk_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id) NOT VALID;
 A   ALTER TABLE ONLY public.solicitud_viaje DROP CONSTRAINT fk_ruta;
       public          postgres    false    3302    231    227            �           2606    24641    punto fk_ruta    FK CONSTRAINT     u   ALTER TABLE ONLY public.punto
    ADD CONSTRAINT fk_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id) NOT VALID;
 7   ALTER TABLE ONLY public.punto DROP CONSTRAINT fk_ruta;
       public          postgres    false    233    227    3302                       2606    24615    pago fk_soli_viaje    FK CONSTRAINT     �   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_soli_viaje FOREIGN KEY (id_soli_viaje) REFERENCES public.solicitud_viaje(id) NOT VALID;
 <   ALTER TABLE ONLY public.pago DROP CONSTRAINT fk_soli_viaje;
       public          postgres    false    3306    235    231            �           2606    24651    punto fk_soli_viaje    FK CONSTRAINT     �   ALTER TABLE ONLY public.punto
    ADD CONSTRAINT fk_soli_viaje FOREIGN KEY (id_soli_viaje) REFERENCES public.solicitud_viaje(id) NOT VALID;
 =   ALTER TABLE ONLY public.punto DROP CONSTRAINT fk_soli_viaje;
       public          postgres    false    231    3306    233                       2606    17138 $   calificacion_comentario fk_soliviaje    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_comentario
    ADD CONSTRAINT fk_soliviaje FOREIGN KEY (id_soliviaje) REFERENCES public.solicitud_viaje(id) NOT VALID;
 N   ALTER TABLE ONLY public.calificacion_comentario DROP CONSTRAINT fk_soliviaje;
       public          postgres    false    231    237    3306                       2606    24605    pago fk_targeta    FK CONSTRAINT     }   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_targeta FOREIGN KEY (id_targeta) REFERENCES public.targeta(id) NOT VALID;
 9   ALTER TABLE ONLY public.pago DROP CONSTRAINT fk_targeta;
       public          postgres    false    225    235    3300            �           2606    16916    brevet fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.brevet
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) NOT VALID;
 ;   ALTER TABLE ONLY public.brevet DROP CONSTRAINT fk_usuario;
       public          postgres    false    223    217    3298            �           2606    16929    vehiculo fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) NOT VALID;
 =   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT fk_usuario;
       public          postgres    false    223    3298    219            �           2606    16942    targeta fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.targeta
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) NOT VALID;
 <   ALTER TABLE ONLY public.targeta DROP CONSTRAINT fk_usuario;
       public          postgres    false    223    3298    225            �           2606    17006    ruta fk_usuario    FK CONSTRAINT     ~   ALTER TABLE ONLY public.ruta
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) NOT VALID;
 9   ALTER TABLE ONLY public.ruta DROP CONSTRAINT fk_usuario;
       public          postgres    false    3298    227    223            �           2606    17099    solicitud_viaje fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_viaje
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) NOT VALID;
 D   ALTER TABLE ONLY public.solicitud_viaje DROP CONSTRAINT fk_usuario;
       public          postgres    false    231    3298    223                       2606    17133 "   calificacion_comentario fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_comentario
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) NOT VALID;
 L   ALTER TABLE ONLY public.calificacion_comentario DROP CONSTRAINT fk_usuario;
       public          postgres    false    237    223    3298            �           2606    16976    carac_espe fk_vehiculo    FK CONSTRAINT     �   ALTER TABLE ONLY public.carac_espe
    ADD CONSTRAINT fk_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES public.vehiculo(id) NOT VALID;
 @   ALTER TABLE ONLY public.carac_espe DROP CONSTRAINT fk_vehiculo;
       public          postgres    false    3294    221    219            �   �   x���A
1E��)��iڦm�"�U�C=�U�q���?Ϫ��EHNc�^'kb5�v��͡�u7��Ŝ����ʭ�K}����'6J@qlz�~��'.����"Ȋ玉)�"V
�#"v~a̂I(��i�`k �=,bu      �   L   x�3��-M��W(*�L�WH�SH�Q(�L�J�4BC�?N##c]3]##c+c+Cc=s#]|R%\1z\\\ ��\      �   _   x�]�1�  �^���ZEy��	:�{���X�גcH'T�<\�(P��Գ��}DT���f�L�''�+[C�/�dEY���Z��p
      �      x������ � �      �   @   x�3�44�,1~ d����([Y������K[�����b���� K�n      �   K   x�3��--�LNT�RHJL�H,I�,�4�4202�50�52P04�25�20�3���50A�2�22Գ07Jq��qqq +      �   O   x�3�45�3507��5�342��L�I/�S(H,*I�,�4��!##c]3]##c+SK+Sc=3s]<R\1z\\\ ;�t      �   �   x�m��� �gx�� � �������&�n]%C�rK�_tr09×�'�xOõ'\-���",:i����6E$SWD%i��<��~�?01�٬1Y܁����mڜq�fk���ʃ�a�gr)2"��+~�$~Tb��8o~}�U-�L��N�R��0<a      �   v   x����	�0��=E�y���!:A.�#�t�6�@\ڂ���4�9��69���<9iu�G��jPhI�IqSq�3���_I�b�'��ѭeb�.��]��Ǭ��T���V�ZNa�1�!=@J      �   N   x�}ɱ�0�ڙ��>;�g��2���\sM"g̰�9,>nM�����rI%�+F%����W�П*�ZJy ���      �   �   x�}��N�0���S��kC���3hC�q@��[&uL�v{zʆ��!d˲�[�~E��w�-o�a/|\�h������NÑ��OY�R|
�P�sT)Xg�#se�Q u�(FV��*' �����lu	��(I��K��7Đh��ޥ��"�2�����OWմ�㍜��pӕ͝�ճ�ɤE��״�vZ�����O��aH�u��G��g�.�_OPCw/2I�/ːc�      �   �  x����n�0�y�.�blǗ��J����U7�\!	��x��d4mA�:���o����a�s����n���6u��cT��]�E�f�ĤE$��˵��׏k+�r�7����p�N�z���fq��BеU�n~�ˣ�@�A��
�
� a������( 5
6~g��ήk��7W|fOv�yR��G�L� ��{q\g��x��AF����k3@0��gRD��B֢7RL$CJ�U�k�wR���;W��}�D�L�(�����)K�^1?3�q�e�UDq��5��H�B$���L��\Ƣ�P���������@^у��Œ��Q	���9l�^0�e_J�c����{�:�܌pK��B��L�B�Wk��1N���/1���/,�>>�[��I��@8�AӜ��[�~B��i�tlh��m[{���^~�2i1_��G^���j�w���      �   �   x���A
�0�����@��dZ�9�KAR��`#!��-�X��������C���l�L�8`\�2�t��/����C^�a�-EmX�}l�C�Y�E1�.6��_�_��.�"z<ʾ�%s�Ƙ/Ɣ46     