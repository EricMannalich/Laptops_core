PGDMP         8                z           Laptops    13.1    13.4 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    50593    Laptops    DATABASE     d   CREATE DATABASE "Laptops" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Cuba.1252';
    DROP DATABASE "Laptops";
                postgres    false            �            1259    50594 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    50597    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    200            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    201            �            1259    50599    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    50602    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    203            �            1259    50604    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    50607    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    205            �            1259    50609    celery_taskmeta    TABLE       CREATE TABLE public.celery_taskmeta (
    id bigint NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);
 #   DROP TABLE public.celery_taskmeta;
       public         heap    postgres    false            �            1259    50615    celery_taskmeta_id_seq    SEQUENCE        CREATE SEQUENCE public.celery_taskmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.celery_taskmeta_id_seq;
       public          postgres    false    206            �           0    0    celery_taskmeta_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.celery_taskmeta_id_seq OWNED BY public.celery_taskmeta.id;
          public          postgres    false    207            �            1259    50617    celery_tasksetmeta    TABLE     �   CREATE TABLE public.celery_tasksetmeta (
    id bigint NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);
 &   DROP TABLE public.celery_tasksetmeta;
       public         heap    postgres    false            �            1259    50623    celery_tasksetmeta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.celery_tasksetmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.celery_tasksetmeta_id_seq;
       public          postgres    false    208            �           0    0    celery_tasksetmeta_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.celery_tasksetmeta_id_seq OWNED BY public.celery_tasksetmeta.id;
          public          postgres    false    209            �            1259    50625    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    50632    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    211            �            1259    50634    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    50637    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    213            �            1259    50639    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    50645    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    214            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    215            �            1259    50647    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    50653    djcelery_crontabschedule    TABLE     0  CREATE TABLE public.djcelery_crontabschedule (
    id bigint NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);
 ,   DROP TABLE public.djcelery_crontabschedule;
       public         heap    postgres    false            �            1259    50656    djcelery_crontabschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_crontabschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.djcelery_crontabschedule_id_seq;
       public          postgres    false    217            �           0    0    djcelery_crontabschedule_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.djcelery_crontabschedule_id_seq OWNED BY public.djcelery_crontabschedule.id;
          public          postgres    false    218            �            1259    50658    djcelery_intervalschedule    TABLE     �   CREATE TABLE public.djcelery_intervalschedule (
    id bigint NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);
 -   DROP TABLE public.djcelery_intervalschedule;
       public         heap    postgres    false            �            1259    50661     djcelery_intervalschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_intervalschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djcelery_intervalschedule_id_seq;
       public          postgres    false    219            �           0    0     djcelery_intervalschedule_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.djcelery_intervalschedule_id_seq OWNED BY public.djcelery_intervalschedule.id;
          public          postgres    false    220            �            1259    50663    djcelery_periodictask    TABLE     �  CREATE TABLE public.djcelery_periodictask (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id bigint,
    interval_id bigint,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);
 )   DROP TABLE public.djcelery_periodictask;
       public         heap    postgres    false            �            1259    50670    djcelery_periodictask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_periodictask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.djcelery_periodictask_id_seq;
       public          postgres    false    221            �           0    0    djcelery_periodictask_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.djcelery_periodictask_id_seq OWNED BY public.djcelery_periodictask.id;
          public          postgres    false    222            �            1259    50672    djcelery_periodictasks    TABLE        CREATE TABLE public.djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);
 *   DROP TABLE public.djcelery_periodictasks;
       public         heap    postgres    false            �            1259    50675    djcelery_taskstate    TABLE     �  CREATE TABLE public.djcelery_taskstate (
    id bigint NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    hidden boolean NOT NULL,
    worker_id bigint
);
 &   DROP TABLE public.djcelery_taskstate;
       public         heap    postgres    false            �            1259    50681    djcelery_taskstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.djcelery_taskstate_id_seq;
       public          postgres    false    224            �           0    0    djcelery_taskstate_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.djcelery_taskstate_id_seq OWNED BY public.djcelery_taskstate.id;
          public          postgres    false    225            �            1259    50683    djcelery_workerstate    TABLE     �   CREATE TABLE public.djcelery_workerstate (
    id bigint NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);
 (   DROP TABLE public.djcelery_workerstate;
       public         heap    postgres    false            �            1259    50686    djcelery_workerstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_workerstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.djcelery_workerstate_id_seq;
       public          postgres    false    226            �           0    0    djcelery_workerstate_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.djcelery_workerstate_id_seq OWNED BY public.djcelery_workerstate.id;
          public          postgres    false    227            �            1259    50688    principal_cpu    TABLE     �  CREATE TABLE public.principal_cpu (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    marca character varying(1) NOT NULL,
    gama character varying(1) NOT NULL,
    generacion character varying(2) NOT NULL,
    modelo character varying(3) NOT NULL,
    serie character varying(2) NOT NULL,
    nucleos_fuertes integer NOT NULL,
    frecuencia_nucleos_fuertes_all numeric(2,1) NOT NULL,
    nucleos_debiles integer NOT NULL,
    frecuencia_nucleos_debiles_all numeric(2,1) NOT NULL,
    hilos integer NOT NULL,
    pcie_version integer NOT NULL,
    pcie_lineas integer NOT NULL,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL,
    "cinebench_R23_multi" integer NOT NULL,
    "cinebench_R23_single" integer NOT NULL,
    "cache_L2" numeric(4,1) NOT NULL,
    "cache_L3" numeric(4,1) NOT NULL,
    cache_total numeric(4,1) NOT NULL
);
 !   DROP TABLE public.principal_cpu;
       public         heap    postgres    false            �            1259    50691    principal_cpu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_cpu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.principal_cpu_id_seq;
       public          postgres    false    228            �           0    0    principal_cpu_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.principal_cpu_id_seq OWNED BY public.principal_cpu.id;
          public          postgres    false    229            �            1259    50693    principal_disco_duro    TABLE     c  CREATE TABLE public.principal_disco_duro (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    generacion character varying(1) NOT NULL,
    "capacidad_GB" integer NOT NULL,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL
);
 (   DROP TABLE public.principal_disco_duro;
       public         heap    postgres    false            �            1259    50696    principal_disco_duro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_disco_duro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.principal_disco_duro_id_seq;
       public          postgres    false    230            �           0    0    principal_disco_duro_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.principal_disco_duro_id_seq OWNED BY public.principal_disco_duro.id;
          public          postgres    false    231            �            1259    50698    principal_game    TABLE     �   CREATE TABLE public.principal_game (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(128) NOT NULL
);
 "   DROP TABLE public.principal_game;
       public         heap    postgres    false            �            1259    50701    principal_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.principal_game_id_seq;
       public          postgres    false    232            �           0    0    principal_game_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.principal_game_id_seq OWNED BY public.principal_game.id;
          public          postgres    false    233            �            1259    50703    principal_gpu    TABLE     &  CREATE TABLE public.principal_gpu (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    marca character varying(6) NOT NULL,
    generacion character varying(1) NOT NULL,
    modelo character varying(3) NOT NULL,
    serie character varying(2) NOT NULL,
    nucleos integer NOT NULL,
    frecuencia integer NOT NULL,
    "cant_vram_GB" integer NOT NULL,
    "rendimiento_fp32_TFlops" numeric(5,3) NOT NULL,
    tpd_w integer NOT NULL,
    pcie_version integer NOT NULL,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL,
    tipo character varying(3) NOT NULL,
    "cache_L2" numeric(4,1) NOT NULL,
    "cache_L3" numeric(4,1) NOT NULL,
    cache_total numeric(4,1) NOT NULL
);
 !   DROP TABLE public.principal_gpu;
       public         heap    postgres    false            �            1259    50706    principal_gpu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_gpu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.principal_gpu_id_seq;
       public          postgres    false    234            �           0    0    principal_gpu_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.principal_gpu_id_seq OWNED BY public.principal_gpu.id;
          public          postgres    false    235            �            1259    50708    principal_historicalcpu    TABLE     �  CREATE TABLE public.principal_historicalcpu (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    marca character varying(1) NOT NULL,
    gama character varying(1) NOT NULL,
    generacion character varying(2) NOT NULL,
    modelo character varying(3) NOT NULL,
    serie character varying(2) NOT NULL,
    nucleos_fuertes integer NOT NULL,
    frecuencia_nucleos_fuertes_all numeric(2,1) NOT NULL,
    nucleos_debiles integer NOT NULL,
    frecuencia_nucleos_debiles_all numeric(2,1) NOT NULL,
    hilos integer NOT NULL,
    pcie_version integer NOT NULL,
    pcie_lineas integer NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL,
    "cinebench_R23_multi" integer NOT NULL,
    "cinebench_R23_single" integer NOT NULL,
    "cache_L2" numeric(4,1) NOT NULL,
    "cache_L3" numeric(4,1) NOT NULL,
    cache_total numeric(4,1) NOT NULL
);
 +   DROP TABLE public.principal_historicalcpu;
       public         heap    postgres    false            �            1259    50711 &   principal_historicalcpu_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalcpu_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.principal_historicalcpu_history_id_seq;
       public          postgres    false    236            �           0    0 &   principal_historicalcpu_history_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.principal_historicalcpu_history_id_seq OWNED BY public.principal_historicalcpu.history_id;
          public          postgres    false    237            �            1259    50713    principal_historicaldisco_duro    TABLE     @  CREATE TABLE public.principal_historicaldisco_duro (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    generacion character varying(1) NOT NULL,
    "capacidad_GB" integer NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL
);
 2   DROP TABLE public.principal_historicaldisco_duro;
       public         heap    postgres    false            �            1259    50716 -   principal_historicaldisco_duro_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicaldisco_duro_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.principal_historicaldisco_duro_history_id_seq;
       public          postgres    false    238            �           0    0 -   principal_historicaldisco_duro_history_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.principal_historicaldisco_duro_history_id_seq OWNED BY public.principal_historicaldisco_duro.history_id;
          public          postgres    false    239            �            1259    50718    principal_historicalgame    TABLE     �  CREATE TABLE public.principal_historicalgame (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(128) NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint
);
 ,   DROP TABLE public.principal_historicalgame;
       public         heap    postgres    false            �            1259    50721 '   principal_historicalgame_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalgame_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.principal_historicalgame_history_id_seq;
       public          postgres    false    240            �           0    0 '   principal_historicalgame_history_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.principal_historicalgame_history_id_seq OWNED BY public.principal_historicalgame.history_id;
          public          postgres    false    241            �            1259    50723    principal_historicalgpu    TABLE       CREATE TABLE public.principal_historicalgpu (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    marca character varying(6) NOT NULL,
    generacion character varying(1) NOT NULL,
    modelo character varying(3) NOT NULL,
    serie character varying(2) NOT NULL,
    nucleos integer NOT NULL,
    frecuencia integer NOT NULL,
    "cant_vram_GB" integer NOT NULL,
    "rendimiento_fp32_TFlops" numeric(5,3) NOT NULL,
    tpd_w integer NOT NULL,
    pcie_version integer NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL,
    tipo character varying(3) NOT NULL,
    "cache_L2" numeric(4,1) NOT NULL,
    "cache_L3" numeric(4,1) NOT NULL,
    cache_total numeric(4,1) NOT NULL
);
 +   DROP TABLE public.principal_historicalgpu;
       public         heap    postgres    false            �            1259    50726 &   principal_historicalgpu_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalgpu_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.principal_historicalgpu_history_id_seq;
       public          postgres    false    242            �           0    0 &   principal_historicalgpu_history_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.principal_historicalgpu_history_id_seq OWNED BY public.principal_historicalgpu.history_id;
          public          postgres    false    243            �            1259    50728    principal_historicallaptop    TABLE     �  CREATE TABLE public.principal_historicallaptop (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    marca character varying(16) NOT NULL,
    modelo character varying(64),
    "precio_amazon_EEUU" numeric(7,2) NOT NULL,
    "clasificacion_amazon_EEUU" numeric(2,1) NOT NULL,
    "link_amazon_EEUU" character varying(200) NOT NULL,
    raytracing boolean NOT NULL,
    cambio_gpu_dinamico boolean NOT NULL,
    mux_switch boolean NOT NULL,
    refresco_pantalla_adaptativo boolean NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    cpu_id integer,
    disco_duro_id integer,
    gpu_id integer,
    history_user_id bigint,
    monitor_id integer,
    ram_id integer,
    thunderbolt_3_4 boolean NOT NULL,
    serie character varying(32),
    image text,
    nombre character varying(256),
    puntuacion_save numeric(4,1) NOT NULL,
    calidad_precio numeric(4,1) NOT NULL,
    link_notebookcheck character varying(200)
);
 .   DROP TABLE public.principal_historicallaptop;
       public         heap    postgres    false            �            1259    50734 )   principal_historicallaptop_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicallaptop_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.principal_historicallaptop_history_id_seq;
       public          postgres    false    244            �           0    0 )   principal_historicallaptop_history_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.principal_historicallaptop_history_id_seq OWNED BY public.principal_historicallaptop.history_id;
          public          postgres    false    245            �            1259    50736    principal_historicalmonitor    TABLE     �  CREATE TABLE public.principal_historicalmonitor (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    resolucion character varying(1) NOT NULL,
    tipo character varying(1) NOT NULL,
    hdr character varying(1) NOT NULL,
    "refrescamiento_Hz" integer NOT NULL,
    "espacio_sRGB" integer NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    pulgadas numeric(3,1) NOT NULL,
    nombre character varying(64),
    puntuacion_save numeric(3,1) NOT NULL
);
 /   DROP TABLE public.principal_historicalmonitor;
       public         heap    postgres    false            �            1259    50739 *   principal_historicalmonitor_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalmonitor_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.principal_historicalmonitor_history_id_seq;
       public          postgres    false    246            �           0    0 *   principal_historicalmonitor_history_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.principal_historicalmonitor_history_id_seq OWNED BY public.principal_historicalmonitor.history_id;
          public          postgres    false    247            �            1259    50741    principal_historicalram    TABLE     _  CREATE TABLE public.principal_historicalram (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    generacion character varying(1) NOT NULL,
    "frecuencia_MHz" integer NOT NULL,
    "cant_ram_GB" integer NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL
);
 +   DROP TABLE public.principal_historicalram;
       public         heap    postgres    false            �            1259    50744 &   principal_historicalram_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalram_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.principal_historicalram_history_id_seq;
       public          postgres    false    248            �           0    0 &   principal_historicalram_history_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.principal_historicalram_history_id_seq OWNED BY public.principal_historicalram.history_id;
          public          postgres    false    249            �            1259    50746    principal_historicalrendimiento    TABLE     +  CREATE TABLE public.principal_historicalrendimiento (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    fps integer NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    game_id integer,
    history_user_id bigint,
    laptop_id integer,
    fps_review boolean NOT NULL,
    nombre character varying(256)
);
 3   DROP TABLE public.principal_historicalrendimiento;
       public         heap    postgres    false            �            1259    50749 .   principal_historicalrendimiento_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalrendimiento_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.principal_historicalrendimiento_history_id_seq;
       public          postgres    false    250            �           0    0 .   principal_historicalrendimiento_history_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.principal_historicalrendimiento_history_id_seq OWNED BY public.principal_historicalrendimiento.history_id;
          public          postgres    false    251            �            1259    50751    principal_laptop    TABLE     �  CREATE TABLE public.principal_laptop (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    marca character varying(16) NOT NULL,
    modelo character varying(64),
    "precio_amazon_EEUU" numeric(7,2) NOT NULL,
    "clasificacion_amazon_EEUU" numeric(2,1) NOT NULL,
    "link_amazon_EEUU" character varying(200) NOT NULL,
    raytracing boolean NOT NULL,
    cambio_gpu_dinamico boolean NOT NULL,
    mux_switch boolean NOT NULL,
    refresco_pantalla_adaptativo boolean NOT NULL,
    cpu_id integer NOT NULL,
    disco_duro_id integer NOT NULL,
    gpu_id integer NOT NULL,
    monitor_id integer NOT NULL,
    ram_id integer NOT NULL,
    thunderbolt_3_4 boolean NOT NULL,
    serie character varying(32),
    image character varying(255),
    nombre character varying(256),
    puntuacion_save numeric(4,1) NOT NULL,
    calidad_precio numeric(4,1) NOT NULL,
    link_notebookcheck character varying(200)
);
 $   DROP TABLE public.principal_laptop;
       public         heap    postgres    false            �            1259    50757    principal_laptop_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_laptop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.principal_laptop_id_seq;
       public          postgres    false    252            �           0    0    principal_laptop_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.principal_laptop_id_seq OWNED BY public.principal_laptop.id;
          public          postgres    false    253            �            1259    50759    principal_monitor    TABLE     �  CREATE TABLE public.principal_monitor (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    resolucion character varying(1) NOT NULL,
    tipo character varying(1) NOT NULL,
    hdr character varying(1) NOT NULL,
    "refrescamiento_Hz" integer NOT NULL,
    "espacio_sRGB" integer NOT NULL,
    pulgadas numeric(3,1) NOT NULL,
    nombre character varying(64),
    puntuacion_save numeric(3,1) NOT NULL
);
 %   DROP TABLE public.principal_monitor;
       public         heap    postgres    false            �            1259    50762    principal_monitor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_monitor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.principal_monitor_id_seq;
       public          postgres    false    254            �           0    0    principal_monitor_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.principal_monitor_id_seq OWNED BY public.principal_monitor.id;
          public          postgres    false    255                        1259    50764    principal_ram    TABLE     �  CREATE TABLE public.principal_ram (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    generacion character varying(1) NOT NULL,
    "frecuencia_MHz" integer NOT NULL,
    "cant_ram_GB" integer NOT NULL,
    nombre character varying(32),
    puntuacion_save numeric(3,1) NOT NULL
);
 !   DROP TABLE public.principal_ram;
       public         heap    postgres    false                       1259    50767    principal_ram_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_ram_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.principal_ram_id_seq;
       public          postgres    false    256            �           0    0    principal_ram_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.principal_ram_id_seq OWNED BY public.principal_ram.id;
          public          postgres    false    257                       1259    50769    principal_rendimiento    TABLE     `  CREATE TABLE public.principal_rendimiento (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    fps integer NOT NULL,
    game_id integer NOT NULL,
    laptop_id integer NOT NULL,
    fps_review boolean NOT NULL,
    nombre character varying(256)
);
 )   DROP TABLE public.principal_rendimiento;
       public         heap    postgres    false                       1259    50772    principal_rendimiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_rendimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.principal_rendimiento_id_seq;
       public          postgres    false    258            �           0    0    principal_rendimiento_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.principal_rendimiento_id_seq OWNED BY public.principal_rendimiento.id;
          public          postgres    false    259                       1259    50774     token_blacklist_blacklistedtoken    TABLE     �   CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);
 4   DROP TABLE public.token_blacklist_blacklistedtoken;
       public         heap    postgres    false                       1259    50777 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_blacklistedtoken_id_seq;
       public          postgres    false    260            �           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;
          public          postgres    false    261                       1259    50779     token_blacklist_outstandingtoken    TABLE       CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);
 4   DROP TABLE public.token_blacklist_outstandingtoken;
       public         heap    postgres    false                       1259    50785 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_outstandingtoken_id_seq;
       public          postgres    false    262            �           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;
          public          postgres    false    263                       1259    50787    users_historicaluser    TABLE     �  CREATE TABLE public.users_historicaluser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    image text,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint
);
 (   DROP TABLE public.users_historicaluser;
       public         heap    postgres    false            	           1259    50793 #   users_historicaluser_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_historicaluser_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.users_historicaluser_history_id_seq;
       public          postgres    false    264            �           0    0 #   users_historicaluser_history_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.users_historicaluser_history_id_seq OWNED BY public.users_historicaluser.history_id;
          public          postgres    false    265            
           1259    50795 
   users_user    TABLE     �  CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    image character varying(255),
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL
);
    DROP TABLE public.users_user;
       public         heap    postgres    false                       1259    50801    users_user_groups    TABLE     ~   CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false                       1259    50804    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    267            �           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    268                       1259    50806    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    266            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          postgres    false    269                       1259    50808    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false                       1259    50811 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    270            �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    271                       2604    50813    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200                       2604    50814    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202                       2604    50815    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204                       2604    50816    celery_taskmeta id    DEFAULT     x   ALTER TABLE ONLY public.celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('public.celery_taskmeta_id_seq'::regclass);
 A   ALTER TABLE public.celery_taskmeta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206                       2604    50817    celery_tasksetmeta id    DEFAULT     ~   ALTER TABLE ONLY public.celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('public.celery_tasksetmeta_id_seq'::regclass);
 D   ALTER TABLE public.celery_tasksetmeta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208                       2604    50818    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            	           2604    50819    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            
           2604    50820    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214                       2604    50821    djcelery_crontabschedule id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.djcelery_crontabschedule_id_seq'::regclass);
 J   ALTER TABLE public.djcelery_crontabschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                       2604    50822    djcelery_intervalschedule id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.djcelery_intervalschedule_id_seq'::regclass);
 K   ALTER TABLE public.djcelery_intervalschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219                       2604    50823    djcelery_periodictask id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('public.djcelery_periodictask_id_seq'::regclass);
 G   ALTER TABLE public.djcelery_periodictask ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                       2604    50824    djcelery_taskstate id    DEFAULT     ~   ALTER TABLE ONLY public.djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('public.djcelery_taskstate_id_seq'::regclass);
 D   ALTER TABLE public.djcelery_taskstate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224                       2604    50825    djcelery_workerstate id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('public.djcelery_workerstate_id_seq'::regclass);
 F   ALTER TABLE public.djcelery_workerstate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                       2604    50826    principal_cpu id    DEFAULT     t   ALTER TABLE ONLY public.principal_cpu ALTER COLUMN id SET DEFAULT nextval('public.principal_cpu_id_seq'::regclass);
 ?   ALTER TABLE public.principal_cpu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228                       2604    50827    principal_disco_duro id    DEFAULT     �   ALTER TABLE ONLY public.principal_disco_duro ALTER COLUMN id SET DEFAULT nextval('public.principal_disco_duro_id_seq'::regclass);
 F   ALTER TABLE public.principal_disco_duro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230                       2604    50828    principal_game id    DEFAULT     v   ALTER TABLE ONLY public.principal_game ALTER COLUMN id SET DEFAULT nextval('public.principal_game_id_seq'::regclass);
 @   ALTER TABLE public.principal_game ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232                       2604    50829    principal_gpu id    DEFAULT     t   ALTER TABLE ONLY public.principal_gpu ALTER COLUMN id SET DEFAULT nextval('public.principal_gpu_id_seq'::regclass);
 ?   ALTER TABLE public.principal_gpu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234                       2604    50830 "   principal_historicalcpu history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalcpu ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalcpu_history_id_seq'::regclass);
 Q   ALTER TABLE public.principal_historicalcpu ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    237    236                       2604    50831 )   principal_historicaldisco_duro history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicaldisco_duro ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicaldisco_duro_history_id_seq'::regclass);
 X   ALTER TABLE public.principal_historicaldisco_duro ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    239    238                       2604    50832 #   principal_historicalgame history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalgame ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalgame_history_id_seq'::regclass);
 R   ALTER TABLE public.principal_historicalgame ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    241    240                       2604    50833 "   principal_historicalgpu history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalgpu ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalgpu_history_id_seq'::regclass);
 Q   ALTER TABLE public.principal_historicalgpu ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    243    242                       2604    50834 %   principal_historicallaptop history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicallaptop ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicallaptop_history_id_seq'::regclass);
 T   ALTER TABLE public.principal_historicallaptop ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    245    244                       2604    50835 &   principal_historicalmonitor history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalmonitor ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalmonitor_history_id_seq'::regclass);
 U   ALTER TABLE public.principal_historicalmonitor ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    247    246                       2604    50836 "   principal_historicalram history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalram ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalram_history_id_seq'::regclass);
 Q   ALTER TABLE public.principal_historicalram ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    249    248                       2604    50837 *   principal_historicalrendimiento history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalrendimiento ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalrendimiento_history_id_seq'::regclass);
 Y   ALTER TABLE public.principal_historicalrendimiento ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    251    250                       2604    50838    principal_laptop id    DEFAULT     z   ALTER TABLE ONLY public.principal_laptop ALTER COLUMN id SET DEFAULT nextval('public.principal_laptop_id_seq'::regclass);
 B   ALTER TABLE public.principal_laptop ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252                       2604    50839    principal_monitor id    DEFAULT     |   ALTER TABLE ONLY public.principal_monitor ALTER COLUMN id SET DEFAULT nextval('public.principal_monitor_id_seq'::regclass);
 C   ALTER TABLE public.principal_monitor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254                       2604    50840    principal_ram id    DEFAULT     t   ALTER TABLE ONLY public.principal_ram ALTER COLUMN id SET DEFAULT nextval('public.principal_ram_id_seq'::regclass);
 ?   ALTER TABLE public.principal_ram ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256                        2604    50841    principal_rendimiento id    DEFAULT     �   ALTER TABLE ONLY public.principal_rendimiento ALTER COLUMN id SET DEFAULT nextval('public.principal_rendimiento_id_seq'::regclass);
 G   ALTER TABLE public.principal_rendimiento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            !           2604    50842 #   token_blacklist_blacklistedtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_blacklistedtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260            "           2604    50843 #   token_blacklist_outstandingtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_outstandingtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262            #           2604    50844    users_historicaluser history_id    DEFAULT     �   ALTER TABLE ONLY public.users_historicaluser ALTER COLUMN history_id SET DEFAULT nextval('public.users_historicaluser_history_id_seq'::regclass);
 N   ALTER TABLE public.users_historicaluser ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    265    264            $           2604    50845    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    266            %           2604    50846    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            &           2604    50847    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270            �          0    50594 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    200   �:      �          0    50599    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    202   �:      �          0    50604    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    204   �:      �          0    50609    celery_taskmeta 
   TABLE DATA           j   COPY public.celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
    public          postgres    false    206   �?      �          0    50617    celery_tasksetmeta 
   TABLE DATA           W   COPY public.celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
    public          postgres    false    208   @      �          0    50625    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    210    @      �          0    50634    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   �v      �          0    50639    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    214   x      �          0    50647    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    216   �|      �          0    50653    djcelery_crontabschedule 
   TABLE DATA           n   COPY public.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
    public          postgres    false    217   /      �          0    50658    djcelery_intervalschedule 
   TABLE DATA           F   COPY public.djcelery_intervalschedule (id, every, period) FROM stdin;
    public          postgres    false    219   L      �          0    50663    djcelery_periodictask 
   TABLE DATA           �   COPY public.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) FROM stdin;
    public          postgres    false    221   i      �          0    50672    djcelery_periodictasks 
   TABLE DATA           D   COPY public.djcelery_periodictasks (ident, last_update) FROM stdin;
    public          postgres    false    223   �      �          0    50675    djcelery_taskstate 
   TABLE DATA           �   COPY public.djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, hidden, worker_id) FROM stdin;
    public          postgres    false    224   �      �          0    50683    djcelery_workerstate 
   TABLE DATA           L   COPY public.djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
    public          postgres    false    226   �      �          0    50688    principal_cpu 
   TABLE DATA           v  COPY public.principal_cpu (id, state, created_date, modified_date, deleted_date, marca, gama, generacion, modelo, serie, nucleos_fuertes, frecuencia_nucleos_fuertes_all, nucleos_debiles, frecuencia_nucleos_debiles_all, hilos, pcie_version, pcie_lineas, nombre, puntuacion_save, "cinebench_R23_multi", "cinebench_R23_single", "cache_L2", "cache_L3", cache_total) FROM stdin;
    public          postgres    false    228   �      �          0    50693    principal_disco_duro 
   TABLE DATA           �   COPY public.principal_disco_duro (id, state, created_date, modified_date, deleted_date, generacion, "capacidad_GB", nombre, puntuacion_save) FROM stdin;
    public          postgres    false    230   ��      �          0    50698    principal_game 
   TABLE DATA           f   COPY public.principal_game (id, state, created_date, modified_date, deleted_date, nombre) FROM stdin;
    public          postgres    false    232   �      �          0    50703    principal_gpu 
   TABLE DATA             COPY public.principal_gpu (id, state, created_date, modified_date, deleted_date, marca, generacion, modelo, serie, nucleos, frecuencia, "cant_vram_GB", "rendimiento_fp32_TFlops", tpd_w, pcie_version, nombre, puntuacion_save, tipo, "cache_L2", "cache_L3", cache_total) FROM stdin;
    public          postgres    false    234   C�      �          0    50708    principal_historicalcpu 
   TABLE DATA           �  COPY public.principal_historicalcpu (id, state, created_date, modified_date, deleted_date, marca, gama, generacion, modelo, serie, nucleos_fuertes, frecuencia_nucleos_fuertes_all, nucleos_debiles, frecuencia_nucleos_debiles_all, hilos, pcie_version, pcie_lineas, history_id, history_date, history_change_reason, history_type, history_user_id, nombre, puntuacion_save, "cinebench_R23_multi", "cinebench_R23_single", "cache_L2", "cache_L3", cache_total) FROM stdin;
    public          postgres    false    236   5�      �          0    50713    principal_historicaldisco_duro 
   TABLE DATA           �   COPY public.principal_historicaldisco_duro (id, state, created_date, modified_date, deleted_date, generacion, "capacidad_GB", history_id, history_date, history_change_reason, history_type, history_user_id, nombre, puntuacion_save) FROM stdin;
    public          postgres    false    238   ^�      �          0    50718    principal_historicalgame 
   TABLE DATA           �   COPY public.principal_historicalgame (id, state, created_date, modified_date, deleted_date, nombre, history_id, history_date, history_change_reason, history_type, history_user_id) FROM stdin;
    public          postgres    false    240   P�      �          0    50723    principal_historicalgpu 
   TABLE DATA           r  COPY public.principal_historicalgpu (id, state, created_date, modified_date, deleted_date, marca, generacion, modelo, serie, nucleos, frecuencia, "cant_vram_GB", "rendimiento_fp32_TFlops", tpd_w, pcie_version, history_id, history_date, history_change_reason, history_type, history_user_id, nombre, puntuacion_save, tipo, "cache_L2", "cache_L3", cache_total) FROM stdin;
    public          postgres    false    242   ��      �          0    50728    principal_historicallaptop 
   TABLE DATA           �  COPY public.principal_historicallaptop (id, state, created_date, modified_date, deleted_date, marca, modelo, "precio_amazon_EEUU", "clasificacion_amazon_EEUU", "link_amazon_EEUU", raytracing, cambio_gpu_dinamico, mux_switch, refresco_pantalla_adaptativo, history_id, history_date, history_change_reason, history_type, cpu_id, disco_duro_id, gpu_id, history_user_id, monitor_id, ram_id, thunderbolt_3_4, serie, image, nombre, puntuacion_save, calidad_precio, link_notebookcheck) FROM stdin;
    public          postgres    false    244   4�      �          0    50736    principal_historicalmonitor 
   TABLE DATA             COPY public.principal_historicalmonitor (id, state, created_date, modified_date, deleted_date, resolucion, tipo, hdr, "refrescamiento_Hz", "espacio_sRGB", history_id, history_date, history_change_reason, history_type, history_user_id, pulgadas, nombre, puntuacion_save) FROM stdin;
    public          postgres    false    246   �      �          0    50741    principal_historicalram 
   TABLE DATA           �   COPY public.principal_historicalram (id, state, created_date, modified_date, deleted_date, generacion, "frecuencia_MHz", "cant_ram_GB", history_id, history_date, history_change_reason, history_type, history_user_id, nombre, puntuacion_save) FROM stdin;
    public          postgres    false    248         �          0    50746    principal_historicalrendimiento 
   TABLE DATA           �   COPY public.principal_historicalrendimiento (id, state, created_date, modified_date, deleted_date, fps, history_id, history_date, history_change_reason, history_type, game_id, history_user_id, laptop_id, fps_review, nombre) FROM stdin;
    public          postgres    false    250   (0      �          0    50751    principal_laptop 
   TABLE DATA           �  COPY public.principal_laptop (id, state, created_date, modified_date, deleted_date, marca, modelo, "precio_amazon_EEUU", "clasificacion_amazon_EEUU", "link_amazon_EEUU", raytracing, cambio_gpu_dinamico, mux_switch, refresco_pantalla_adaptativo, cpu_id, disco_duro_id, gpu_id, monitor_id, ram_id, thunderbolt_3_4, serie, image, nombre, puntuacion_save, calidad_precio, link_notebookcheck) FROM stdin;
    public          postgres    false    252   h�      �          0    50759    principal_monitor 
   TABLE DATA           �   COPY public.principal_monitor (id, state, created_date, modified_date, deleted_date, resolucion, tipo, hdr, "refrescamiento_Hz", "espacio_sRGB", pulgadas, nombre, puntuacion_save) FROM stdin;
    public          postgres    false    254   ��      �          0    50764    principal_ram 
   TABLE DATA           �   COPY public.principal_ram (id, state, created_date, modified_date, deleted_date, generacion, "frecuencia_MHz", "cant_ram_GB", nombre, puntuacion_save) FROM stdin;
    public          postgres    false    256          �          0    50769    principal_rendimiento 
   TABLE DATA           �   COPY public.principal_rendimiento (id, state, created_date, modified_date, deleted_date, fps, game_id, laptop_id, fps_review, nombre) FROM stdin;
    public          postgres    false    258   �       �          0    50774     token_blacklist_blacklistedtoken 
   TABLE DATA           X   COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
    public          postgres    false    260   �      �          0    50779     token_blacklist_outstandingtoken 
   TABLE DATA           k   COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
    public          postgres    false    262   �      �          0    50787    users_historicaluser 
   TABLE DATA           �   COPY public.users_historicaluser (id, password, last_login, is_superuser, username, email, first_name, last_name, image, is_active, is_staff, history_id, history_date, history_change_reason, history_type, history_user_id) FROM stdin;
    public          postgres    false    264   
      �          0    50795 
   users_user 
   TABLE DATA           �   COPY public.users_user (id, password, last_login, is_superuser, username, email, first_name, last_name, image, is_active, is_staff) FROM stdin;
    public          postgres    false    266   c      �          0    50801    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    267         �          0    50808    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    270   -      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    201            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);
          public          postgres    false    205            �           0    0    celery_taskmeta_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.celery_taskmeta_id_seq', 1, false);
          public          postgres    false    207            �           0    0    celery_tasksetmeta_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.celery_tasksetmeta_id_seq', 1, false);
          public          postgres    false    209            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 696, true);
          public          postgres    false    211            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 33, true);
          public          postgres    false    213            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 60, true);
          public          postgres    false    215            �           0    0    djcelery_crontabschedule_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.djcelery_crontabschedule_id_seq', 1, false);
          public          postgres    false    218            �           0    0     djcelery_intervalschedule_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.djcelery_intervalschedule_id_seq', 1, false);
          public          postgres    false    220                        0    0    djcelery_periodictask_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.djcelery_periodictask_id_seq', 1, false);
          public          postgres    false    222                       0    0    djcelery_taskstate_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.djcelery_taskstate_id_seq', 1, false);
          public          postgres    false    225                       0    0    djcelery_workerstate_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.djcelery_workerstate_id_seq', 1, false);
          public          postgres    false    227                       0    0    principal_cpu_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.principal_cpu_id_seq', 14, true);
          public          postgres    false    229                       0    0    principal_disco_duro_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.principal_disco_duro_id_seq', 5, true);
          public          postgres    false    231                       0    0    principal_game_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.principal_game_id_seq', 21, true);
          public          postgres    false    233                       0    0    principal_gpu_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.principal_gpu_id_seq', 20, true);
          public          postgres    false    235                       0    0 &   principal_historicalcpu_history_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.principal_historicalcpu_history_id_seq', 425, true);
          public          postgres    false    237                       0    0 -   principal_historicaldisco_duro_history_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.principal_historicaldisco_duro_history_id_seq', 349, true);
          public          postgres    false    239            	           0    0 '   principal_historicalgame_history_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.principal_historicalgame_history_id_seq', 21, true);
          public          postgres    false    241            
           0    0 &   principal_historicalgpu_history_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.principal_historicalgpu_history_id_seq', 419, true);
          public          postgres    false    243                       0    0 )   principal_historicallaptop_history_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.principal_historicallaptop_history_id_seq', 556, true);
          public          postgres    false    245                       0    0 *   principal_historicalmonitor_history_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.principal_historicalmonitor_history_id_seq', 385, true);
          public          postgres    false    247                       0    0 &   principal_historicalram_history_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.principal_historicalram_history_id_seq', 355, true);
          public          postgres    false    249                       0    0 .   principal_historicalrendimiento_history_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.principal_historicalrendimiento_history_id_seq', 3168, true);
          public          postgres    false    251                       0    0    principal_laptop_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.principal_laptop_id_seq', 26, true);
          public          postgres    false    253                       0    0    principal_monitor_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.principal_monitor_id_seq', 18, true);
          public          postgres    false    255                       0    0    principal_ram_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.principal_ram_id_seq', 8, true);
          public          postgres    false    257                       0    0    principal_rendimiento_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.principal_rendimiento_id_seq', 375, true);
          public          postgres    false    259                       0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);
          public          postgres    false    261                       0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 1, false);
          public          postgres    false    263                       0    0 #   users_historicaluser_history_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_historicaluser_history_id_seq', 5, true);
          public          postgres    false    265                       0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public          postgres    false    268                       0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
          public          postgres    false    269                       0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          postgres    false    271            )           2606    50849    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    200            .           2606    50851 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    202    202            1           2606    50853 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    202            +           2606    50855    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    200            4           2606    50857 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    204    204            6           2606    50859 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    204            9           2606    50861 $   celery_taskmeta celery_taskmeta_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_pkey;
       public            postgres    false    206            <           2606    50863 +   celery_taskmeta celery_taskmeta_task_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);
 U   ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_task_id_key;
       public            postgres    false    206            ?           2606    50865 *   celery_tasksetmeta celery_tasksetmeta_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_pkey;
       public            postgres    false    208            B           2606    50867 4   celery_tasksetmeta celery_tasksetmeta_taskset_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);
 ^   ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_taskset_id_key;
       public            postgres    false    208            E           2606    50869 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    210            H           2606    50871 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            J           2606    50873 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            L           2606    50875 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    214            O           2606    50877 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    216            R           2606    50879 6   djcelery_crontabschedule djcelery_crontabschedule_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.djcelery_crontabschedule DROP CONSTRAINT djcelery_crontabschedule_pkey;
       public            postgres    false    217            T           2606    50881 8   djcelery_intervalschedule djcelery_intervalschedule_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djcelery_intervalschedule DROP CONSTRAINT djcelery_intervalschedule_pkey;
       public            postgres    false    219            Y           2606    50883 4   djcelery_periodictask djcelery_periodictask_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);
 ^   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_name_key;
       public            postgres    false    221            [           2606    50885 0   djcelery_periodictask djcelery_periodictask_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_pkey;
       public            postgres    false    221            ]           2606    50887 2   djcelery_periodictasks djcelery_periodictasks_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);
 \   ALTER TABLE ONLY public.djcelery_periodictasks DROP CONSTRAINT djcelery_periodictasks_pkey;
       public            postgres    false    223            b           2606    50889 *   djcelery_taskstate djcelery_taskstate_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_pkey;
       public            postgres    false    224            g           2606    50891 1   djcelery_taskstate djcelery_taskstate_task_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);
 [   ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_task_id_key;
       public            postgres    false    224            l           2606    50893 6   djcelery_workerstate djcelery_workerstate_hostname_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);
 `   ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_hostname_key;
       public            postgres    false    226            o           2606    50895 .   djcelery_workerstate djcelery_workerstate_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_pkey;
       public            postgres    false    226            q           2606    50897     principal_cpu principal_cpu_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.principal_cpu
    ADD CONSTRAINT principal_cpu_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.principal_cpu DROP CONSTRAINT principal_cpu_pkey;
       public            postgres    false    228            s           2606    50899 .   principal_disco_duro principal_disco_duro_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.principal_disco_duro
    ADD CONSTRAINT principal_disco_duro_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.principal_disco_duro DROP CONSTRAINT principal_disco_duro_pkey;
       public            postgres    false    230            v           2606    50901 (   principal_game principal_game_nombre_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.principal_game
    ADD CONSTRAINT principal_game_nombre_key UNIQUE (nombre);
 R   ALTER TABLE ONLY public.principal_game DROP CONSTRAINT principal_game_nombre_key;
       public            postgres    false    232            x           2606    50903 "   principal_game principal_game_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.principal_game
    ADD CONSTRAINT principal_game_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.principal_game DROP CONSTRAINT principal_game_pkey;
       public            postgres    false    232            z           2606    50905     principal_gpu principal_gpu_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.principal_gpu
    ADD CONSTRAINT principal_gpu_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.principal_gpu DROP CONSTRAINT principal_gpu_pkey;
       public            postgres    false    234            ~           2606    50907 4   principal_historicalcpu principal_historicalcpu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.principal_historicalcpu
    ADD CONSTRAINT principal_historicalcpu_pkey PRIMARY KEY (history_id);
 ^   ALTER TABLE ONLY public.principal_historicalcpu DROP CONSTRAINT principal_historicalcpu_pkey;
       public            postgres    false    236            �           2606    50909 B   principal_historicaldisco_duro principal_historicaldisco_duro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicaldisco_duro
    ADD CONSTRAINT principal_historicaldisco_duro_pkey PRIMARY KEY (history_id);
 l   ALTER TABLE ONLY public.principal_historicaldisco_duro DROP CONSTRAINT principal_historicaldisco_duro_pkey;
       public            postgres    false    238            �           2606    50911 6   principal_historicalgame principal_historicalgame_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.principal_historicalgame
    ADD CONSTRAINT principal_historicalgame_pkey PRIMARY KEY (history_id);
 `   ALTER TABLE ONLY public.principal_historicalgame DROP CONSTRAINT principal_historicalgame_pkey;
       public            postgres    false    240            �           2606    50913 4   principal_historicalgpu principal_historicalgpu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.principal_historicalgpu
    ADD CONSTRAINT principal_historicalgpu_pkey PRIMARY KEY (history_id);
 ^   ALTER TABLE ONLY public.principal_historicalgpu DROP CONSTRAINT principal_historicalgpu_pkey;
       public            postgres    false    242            �           2606    50915 :   principal_historicallaptop principal_historicallaptop_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicallaptop
    ADD CONSTRAINT principal_historicallaptop_pkey PRIMARY KEY (history_id);
 d   ALTER TABLE ONLY public.principal_historicallaptop DROP CONSTRAINT principal_historicallaptop_pkey;
       public            postgres    false    244            �           2606    50917 <   principal_historicalmonitor principal_historicalmonitor_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalmonitor
    ADD CONSTRAINT principal_historicalmonitor_pkey PRIMARY KEY (history_id);
 f   ALTER TABLE ONLY public.principal_historicalmonitor DROP CONSTRAINT principal_historicalmonitor_pkey;
       public            postgres    false    246            �           2606    50919 4   principal_historicalram principal_historicalram_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.principal_historicalram
    ADD CONSTRAINT principal_historicalram_pkey PRIMARY KEY (history_id);
 ^   ALTER TABLE ONLY public.principal_historicalram DROP CONSTRAINT principal_historicalram_pkey;
       public            postgres    false    248            �           2606    50921 D   principal_historicalrendimiento principal_historicalrendimiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalrendimiento
    ADD CONSTRAINT principal_historicalrendimiento_pkey PRIMARY KEY (history_id);
 n   ALTER TABLE ONLY public.principal_historicalrendimiento DROP CONSTRAINT principal_historicalrendimiento_pkey;
       public            postgres    false    250            �           2606    50923 &   principal_laptop principal_laptop_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.principal_laptop
    ADD CONSTRAINT principal_laptop_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.principal_laptop DROP CONSTRAINT principal_laptop_pkey;
       public            postgres    false    252            �           2606    50925 (   principal_monitor principal_monitor_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.principal_monitor
    ADD CONSTRAINT principal_monitor_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.principal_monitor DROP CONSTRAINT principal_monitor_pkey;
       public            postgres    false    254            �           2606    50927     principal_ram principal_ram_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.principal_ram
    ADD CONSTRAINT principal_ram_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.principal_ram DROP CONSTRAINT principal_ram_pkey;
       public            postgres    false    256            �           2606    50929 0   principal_rendimiento principal_rendimiento_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.principal_rendimiento
    ADD CONSTRAINT principal_rendimiento_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.principal_rendimiento DROP CONSTRAINT principal_rendimiento_pkey;
       public            postgres    false    258            �           2606    50931 F   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_pkey;
       public            postgres    false    260            �           2606    50933 N   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);
 x   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_key;
       public            postgres    false    260            �           2606    50935 W   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);
 �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq;
       public            postgres    false    262            �           2606    50937 F   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_pkey;
       public            postgres    false    262            �           2606    50939 .   users_historicaluser users_historicaluser_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.users_historicaluser
    ADD CONSTRAINT users_historicaluser_pkey PRIMARY KEY (history_id);
 X   ALTER TABLE ONLY public.users_historicaluser DROP CONSTRAINT users_historicaluser_pkey;
       public            postgres    false    264            �           2606    50941    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public            postgres    false    266            �           2606    50943 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    267            �           2606    50945 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    267    267            �           2606    50947    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    266            �           2606    50949 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    270            �           2606    50951 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    270    270            �           2606    50953 "   users_user users_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_username_key;
       public            postgres    false    266            '           1259    50954    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    200            ,           1259    50955 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    202            /           1259    50956 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    202            2           1259    50957 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    204            7           1259    50958    celery_taskmeta_hidden_23fd02dc    INDEX     ]   CREATE INDEX celery_taskmeta_hidden_23fd02dc ON public.celery_taskmeta USING btree (hidden);
 3   DROP INDEX public.celery_taskmeta_hidden_23fd02dc;
       public            postgres    false    206            :           1259    50959 %   celery_taskmeta_task_id_9558b198_like    INDEX     x   CREATE INDEX celery_taskmeta_task_id_9558b198_like ON public.celery_taskmeta USING btree (task_id varchar_pattern_ops);
 9   DROP INDEX public.celery_taskmeta_task_id_9558b198_like;
       public            postgres    false    206            =           1259    50960 "   celery_tasksetmeta_hidden_593cfc24    INDEX     c   CREATE INDEX celery_tasksetmeta_hidden_593cfc24 ON public.celery_tasksetmeta USING btree (hidden);
 6   DROP INDEX public.celery_tasksetmeta_hidden_593cfc24;
       public            postgres    false    208            @           1259    50961 +   celery_tasksetmeta_taskset_id_a5a1d4ae_like    INDEX     �   CREATE INDEX celery_tasksetmeta_taskset_id_a5a1d4ae_like ON public.celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);
 ?   DROP INDEX public.celery_tasksetmeta_taskset_id_a5a1d4ae_like;
       public            postgres    false    208            C           1259    50962 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    210            F           1259    50963 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    210            M           1259    50964 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    216            P           1259    50965 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    216            U           1259    50966 )   djcelery_periodictask_crontab_id_75609bab    INDEX     q   CREATE INDEX djcelery_periodictask_crontab_id_75609bab ON public.djcelery_periodictask USING btree (crontab_id);
 =   DROP INDEX public.djcelery_periodictask_crontab_id_75609bab;
       public            postgres    false    221            V           1259    50967 *   djcelery_periodictask_interval_id_b426ab02    INDEX     s   CREATE INDEX djcelery_periodictask_interval_id_b426ab02 ON public.djcelery_periodictask USING btree (interval_id);
 >   DROP INDEX public.djcelery_periodictask_interval_id_b426ab02;
       public            postgres    false    221            W           1259    50968 (   djcelery_periodictask_name_cb62cda9_like    INDEX     ~   CREATE INDEX djcelery_periodictask_name_cb62cda9_like ON public.djcelery_periodictask USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.djcelery_periodictask_name_cb62cda9_like;
       public            postgres    false    221            ^           1259    50969 "   djcelery_taskstate_hidden_c3905e57    INDEX     c   CREATE INDEX djcelery_taskstate_hidden_c3905e57 ON public.djcelery_taskstate USING btree (hidden);
 6   DROP INDEX public.djcelery_taskstate_hidden_c3905e57;
       public            postgres    false    224            _           1259    50970     djcelery_taskstate_name_8af9eded    INDEX     _   CREATE INDEX djcelery_taskstate_name_8af9eded ON public.djcelery_taskstate USING btree (name);
 4   DROP INDEX public.djcelery_taskstate_name_8af9eded;
       public            postgres    false    224            `           1259    50971 %   djcelery_taskstate_name_8af9eded_like    INDEX     x   CREATE INDEX djcelery_taskstate_name_8af9eded_like ON public.djcelery_taskstate USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.djcelery_taskstate_name_8af9eded_like;
       public            postgres    false    224            c           1259    50972 !   djcelery_taskstate_state_53543be4    INDEX     a   CREATE INDEX djcelery_taskstate_state_53543be4 ON public.djcelery_taskstate USING btree (state);
 5   DROP INDEX public.djcelery_taskstate_state_53543be4;
       public            postgres    false    224            d           1259    50973 &   djcelery_taskstate_state_53543be4_like    INDEX     z   CREATE INDEX djcelery_taskstate_state_53543be4_like ON public.djcelery_taskstate USING btree (state varchar_pattern_ops);
 :   DROP INDEX public.djcelery_taskstate_state_53543be4_like;
       public            postgres    false    224            e           1259    50974 (   djcelery_taskstate_task_id_9d2efdb5_like    INDEX     ~   CREATE INDEX djcelery_taskstate_task_id_9d2efdb5_like ON public.djcelery_taskstate USING btree (task_id varchar_pattern_ops);
 <   DROP INDEX public.djcelery_taskstate_task_id_9d2efdb5_like;
       public            postgres    false    224            h           1259    50975 "   djcelery_taskstate_tstamp_4c3f93a1    INDEX     c   CREATE INDEX djcelery_taskstate_tstamp_4c3f93a1 ON public.djcelery_taskstate USING btree (tstamp);
 6   DROP INDEX public.djcelery_taskstate_tstamp_4c3f93a1;
       public            postgres    false    224            i           1259    50976 %   djcelery_taskstate_worker_id_f7f57a05    INDEX     i   CREATE INDEX djcelery_taskstate_worker_id_f7f57a05 ON public.djcelery_taskstate USING btree (worker_id);
 9   DROP INDEX public.djcelery_taskstate_worker_id_f7f57a05;
       public            postgres    false    224            j           1259    50977 +   djcelery_workerstate_hostname_b31c7fab_like    INDEX     �   CREATE INDEX djcelery_workerstate_hostname_b31c7fab_like ON public.djcelery_workerstate USING btree (hostname varchar_pattern_ops);
 ?   DROP INDEX public.djcelery_workerstate_hostname_b31c7fab_like;
       public            postgres    false    226            m           1259    50978 ,   djcelery_workerstate_last_heartbeat_4539b544    INDEX     w   CREATE INDEX djcelery_workerstate_last_heartbeat_4539b544 ON public.djcelery_workerstate USING btree (last_heartbeat);
 @   DROP INDEX public.djcelery_workerstate_last_heartbeat_4539b544;
       public            postgres    false    226            t           1259    50979 #   principal_game_nombre_3da86bff_like    INDEX     t   CREATE INDEX principal_game_nombre_3da86bff_like ON public.principal_game USING btree (nombre varchar_pattern_ops);
 7   DROP INDEX public.principal_game_nombre_3da86bff_like;
       public            postgres    false    232            {           1259    50980 0   principal_historicalcpu_history_user_id_6a0cac52    INDEX        CREATE INDEX principal_historicalcpu_history_user_id_6a0cac52 ON public.principal_historicalcpu USING btree (history_user_id);
 D   DROP INDEX public.principal_historicalcpu_history_user_id_6a0cac52;
       public            postgres    false    236            |           1259    50981 #   principal_historicalcpu_id_098d025c    INDEX     e   CREATE INDEX principal_historicalcpu_id_098d025c ON public.principal_historicalcpu USING btree (id);
 7   DROP INDEX public.principal_historicalcpu_id_098d025c;
       public            postgres    false    236                       1259    50982 7   principal_historicaldisco_duro_history_user_id_ed8b58a6    INDEX     �   CREATE INDEX principal_historicaldisco_duro_history_user_id_ed8b58a6 ON public.principal_historicaldisco_duro USING btree (history_user_id);
 K   DROP INDEX public.principal_historicaldisco_duro_history_user_id_ed8b58a6;
       public            postgres    false    238            �           1259    50983 *   principal_historicaldisco_duro_id_47434bfb    INDEX     s   CREATE INDEX principal_historicaldisco_duro_id_47434bfb ON public.principal_historicaldisco_duro USING btree (id);
 >   DROP INDEX public.principal_historicaldisco_duro_id_47434bfb;
       public            postgres    false    238            �           1259    50984 1   principal_historicalgame_history_user_id_18d9cb52    INDEX     �   CREATE INDEX principal_historicalgame_history_user_id_18d9cb52 ON public.principal_historicalgame USING btree (history_user_id);
 E   DROP INDEX public.principal_historicalgame_history_user_id_18d9cb52;
       public            postgres    false    240            �           1259    50985 $   principal_historicalgame_id_6447f10c    INDEX     g   CREATE INDEX principal_historicalgame_id_6447f10c ON public.principal_historicalgame USING btree (id);
 8   DROP INDEX public.principal_historicalgame_id_6447f10c;
       public            postgres    false    240            �           1259    50986 (   principal_historicalgame_nombre_d3a7c166    INDEX     o   CREATE INDEX principal_historicalgame_nombre_d3a7c166 ON public.principal_historicalgame USING btree (nombre);
 <   DROP INDEX public.principal_historicalgame_nombre_d3a7c166;
       public            postgres    false    240            �           1259    50987 -   principal_historicalgame_nombre_d3a7c166_like    INDEX     �   CREATE INDEX principal_historicalgame_nombre_d3a7c166_like ON public.principal_historicalgame USING btree (nombre varchar_pattern_ops);
 A   DROP INDEX public.principal_historicalgame_nombre_d3a7c166_like;
       public            postgres    false    240            �           1259    50988 0   principal_historicalgpu_history_user_id_7035fc9f    INDEX        CREATE INDEX principal_historicalgpu_history_user_id_7035fc9f ON public.principal_historicalgpu USING btree (history_user_id);
 D   DROP INDEX public.principal_historicalgpu_history_user_id_7035fc9f;
       public            postgres    false    242            �           1259    50989 #   principal_historicalgpu_id_3c815f31    INDEX     e   CREATE INDEX principal_historicalgpu_id_3c815f31 ON public.principal_historicalgpu USING btree (id);
 7   DROP INDEX public.principal_historicalgpu_id_3c815f31;
       public            postgres    false    242            �           1259    50990 *   principal_historicallaptop_cpu_id_e142a293    INDEX     s   CREATE INDEX principal_historicallaptop_cpu_id_e142a293 ON public.principal_historicallaptop USING btree (cpu_id);
 >   DROP INDEX public.principal_historicallaptop_cpu_id_e142a293;
       public            postgres    false    244            �           1259    50991 1   principal_historicallaptop_disco_duro_id_82322399    INDEX     �   CREATE INDEX principal_historicallaptop_disco_duro_id_82322399 ON public.principal_historicallaptop USING btree (disco_duro_id);
 E   DROP INDEX public.principal_historicallaptop_disco_duro_id_82322399;
       public            postgres    false    244            �           1259    50992 *   principal_historicallaptop_gpu_id_48c3a920    INDEX     s   CREATE INDEX principal_historicallaptop_gpu_id_48c3a920 ON public.principal_historicallaptop USING btree (gpu_id);
 >   DROP INDEX public.principal_historicallaptop_gpu_id_48c3a920;
       public            postgres    false    244            �           1259    50993 3   principal_historicallaptop_history_user_id_68441c27    INDEX     �   CREATE INDEX principal_historicallaptop_history_user_id_68441c27 ON public.principal_historicallaptop USING btree (history_user_id);
 G   DROP INDEX public.principal_historicallaptop_history_user_id_68441c27;
       public            postgres    false    244            �           1259    50994 &   principal_historicallaptop_id_50092810    INDEX     k   CREATE INDEX principal_historicallaptop_id_50092810 ON public.principal_historicallaptop USING btree (id);
 :   DROP INDEX public.principal_historicallaptop_id_50092810;
       public            postgres    false    244            �           1259    50995 )   principal_historicallaptop_marca_15768fb1    INDEX     q   CREATE INDEX principal_historicallaptop_marca_15768fb1 ON public.principal_historicallaptop USING btree (marca);
 =   DROP INDEX public.principal_historicallaptop_marca_15768fb1;
       public            postgres    false    244            �           1259    50996 .   principal_historicallaptop_marca_15768fb1_like    INDEX     �   CREATE INDEX principal_historicallaptop_marca_15768fb1_like ON public.principal_historicallaptop USING btree (marca varchar_pattern_ops);
 B   DROP INDEX public.principal_historicallaptop_marca_15768fb1_like;
       public            postgres    false    244            �           1259    50997 *   principal_historicallaptop_modelo_5a8bb2d9    INDEX     s   CREATE INDEX principal_historicallaptop_modelo_5a8bb2d9 ON public.principal_historicallaptop USING btree (modelo);
 >   DROP INDEX public.principal_historicallaptop_modelo_5a8bb2d9;
       public            postgres    false    244            �           1259    50998 /   principal_historicallaptop_modelo_5a8bb2d9_like    INDEX     �   CREATE INDEX principal_historicallaptop_modelo_5a8bb2d9_like ON public.principal_historicallaptop USING btree (modelo varchar_pattern_ops);
 C   DROP INDEX public.principal_historicallaptop_modelo_5a8bb2d9_like;
       public            postgres    false    244            �           1259    50999 .   principal_historicallaptop_monitor_id_83f2554d    INDEX     {   CREATE INDEX principal_historicallaptop_monitor_id_83f2554d ON public.principal_historicallaptop USING btree (monitor_id);
 B   DROP INDEX public.principal_historicallaptop_monitor_id_83f2554d;
       public            postgres    false    244            �           1259    51000 *   principal_historicallaptop_ram_id_6544d12b    INDEX     s   CREATE INDEX principal_historicallaptop_ram_id_6544d12b ON public.principal_historicallaptop USING btree (ram_id);
 >   DROP INDEX public.principal_historicallaptop_ram_id_6544d12b;
       public            postgres    false    244            �           1259    51001 )   principal_historicallaptop_serie_cbb218dd    INDEX     q   CREATE INDEX principal_historicallaptop_serie_cbb218dd ON public.principal_historicallaptop USING btree (serie);
 =   DROP INDEX public.principal_historicallaptop_serie_cbb218dd;
       public            postgres    false    244            �           1259    51002 .   principal_historicallaptop_serie_cbb218dd_like    INDEX     �   CREATE INDEX principal_historicallaptop_serie_cbb218dd_like ON public.principal_historicallaptop USING btree (serie varchar_pattern_ops);
 B   DROP INDEX public.principal_historicallaptop_serie_cbb218dd_like;
       public            postgres    false    244            �           1259    51003 4   principal_historicalmonitor_history_user_id_05620fe4    INDEX     �   CREATE INDEX principal_historicalmonitor_history_user_id_05620fe4 ON public.principal_historicalmonitor USING btree (history_user_id);
 H   DROP INDEX public.principal_historicalmonitor_history_user_id_05620fe4;
       public            postgres    false    246            �           1259    51004 '   principal_historicalmonitor_id_345398af    INDEX     m   CREATE INDEX principal_historicalmonitor_id_345398af ON public.principal_historicalmonitor USING btree (id);
 ;   DROP INDEX public.principal_historicalmonitor_id_345398af;
       public            postgres    false    246            �           1259    51005 0   principal_historicalram_history_user_id_ae301465    INDEX        CREATE INDEX principal_historicalram_history_user_id_ae301465 ON public.principal_historicalram USING btree (history_user_id);
 D   DROP INDEX public.principal_historicalram_history_user_id_ae301465;
       public            postgres    false    248            �           1259    51006 #   principal_historicalram_id_325bd68b    INDEX     e   CREATE INDEX principal_historicalram_id_325bd68b ON public.principal_historicalram USING btree (id);
 7   DROP INDEX public.principal_historicalram_id_325bd68b;
       public            postgres    false    248            �           1259    51007 0   principal_historicalrendimiento_game_id_dd133654    INDEX        CREATE INDEX principal_historicalrendimiento_game_id_dd133654 ON public.principal_historicalrendimiento USING btree (game_id);
 D   DROP INDEX public.principal_historicalrendimiento_game_id_dd133654;
       public            postgres    false    250            �           1259    51008 8   principal_historicalrendimiento_history_user_id_2b5226cd    INDEX     �   CREATE INDEX principal_historicalrendimiento_history_user_id_2b5226cd ON public.principal_historicalrendimiento USING btree (history_user_id);
 L   DROP INDEX public.principal_historicalrendimiento_history_user_id_2b5226cd;
       public            postgres    false    250            �           1259    51009 +   principal_historicalrendimiento_id_e2854041    INDEX     u   CREATE INDEX principal_historicalrendimiento_id_e2854041 ON public.principal_historicalrendimiento USING btree (id);
 ?   DROP INDEX public.principal_historicalrendimiento_id_e2854041;
       public            postgres    false    250            �           1259    51010 2   principal_historicalrendimiento_laptop_id_4eccdef9    INDEX     �   CREATE INDEX principal_historicalrendimiento_laptop_id_4eccdef9 ON public.principal_historicalrendimiento USING btree (laptop_id);
 F   DROP INDEX public.principal_historicalrendimiento_laptop_id_4eccdef9;
       public            postgres    false    250            �           1259    51011     principal_laptop_cpu_id_bb8f7e67    INDEX     _   CREATE INDEX principal_laptop_cpu_id_bb8f7e67 ON public.principal_laptop USING btree (cpu_id);
 4   DROP INDEX public.principal_laptop_cpu_id_bb8f7e67;
       public            postgres    false    252            �           1259    51012 '   principal_laptop_disco_duro_id_ed4e8966    INDEX     m   CREATE INDEX principal_laptop_disco_duro_id_ed4e8966 ON public.principal_laptop USING btree (disco_duro_id);
 ;   DROP INDEX public.principal_laptop_disco_duro_id_ed4e8966;
       public            postgres    false    252            �           1259    51013     principal_laptop_gpu_id_73d78300    INDEX     _   CREATE INDEX principal_laptop_gpu_id_73d78300 ON public.principal_laptop USING btree (gpu_id);
 4   DROP INDEX public.principal_laptop_gpu_id_73d78300;
       public            postgres    false    252            �           1259    51014    principal_laptop_marca_b2501f61    INDEX     ]   CREATE INDEX principal_laptop_marca_b2501f61 ON public.principal_laptop USING btree (marca);
 3   DROP INDEX public.principal_laptop_marca_b2501f61;
       public            postgres    false    252            �           1259    51015 $   principal_laptop_marca_b2501f61_like    INDEX     v   CREATE INDEX principal_laptop_marca_b2501f61_like ON public.principal_laptop USING btree (marca varchar_pattern_ops);
 8   DROP INDEX public.principal_laptop_marca_b2501f61_like;
       public            postgres    false    252            �           1259    51016     principal_laptop_modelo_299e309a    INDEX     _   CREATE INDEX principal_laptop_modelo_299e309a ON public.principal_laptop USING btree (modelo);
 4   DROP INDEX public.principal_laptop_modelo_299e309a;
       public            postgres    false    252            �           1259    51017 %   principal_laptop_modelo_299e309a_like    INDEX     x   CREATE INDEX principal_laptop_modelo_299e309a_like ON public.principal_laptop USING btree (modelo varchar_pattern_ops);
 9   DROP INDEX public.principal_laptop_modelo_299e309a_like;
       public            postgres    false    252            �           1259    51018 $   principal_laptop_monitor_id_52905fc3    INDEX     g   CREATE INDEX principal_laptop_monitor_id_52905fc3 ON public.principal_laptop USING btree (monitor_id);
 8   DROP INDEX public.principal_laptop_monitor_id_52905fc3;
       public            postgres    false    252            �           1259    51019     principal_laptop_ram_id_78dd03b5    INDEX     _   CREATE INDEX principal_laptop_ram_id_78dd03b5 ON public.principal_laptop USING btree (ram_id);
 4   DROP INDEX public.principal_laptop_ram_id_78dd03b5;
       public            postgres    false    252            �           1259    51020    principal_laptop_serie_64a35414    INDEX     ]   CREATE INDEX principal_laptop_serie_64a35414 ON public.principal_laptop USING btree (serie);
 3   DROP INDEX public.principal_laptop_serie_64a35414;
       public            postgres    false    252            �           1259    51021 $   principal_laptop_serie_64a35414_like    INDEX     v   CREATE INDEX principal_laptop_serie_64a35414_like ON public.principal_laptop USING btree (serie varchar_pattern_ops);
 8   DROP INDEX public.principal_laptop_serie_64a35414_like;
       public            postgres    false    252            �           1259    51022 &   principal_rendimiento_game_id_948eaeba    INDEX     k   CREATE INDEX principal_rendimiento_game_id_948eaeba ON public.principal_rendimiento USING btree (game_id);
 :   DROP INDEX public.principal_rendimiento_game_id_948eaeba;
       public            postgres    false    258            �           1259    51023 (   principal_rendimiento_laptop_id_20e67530    INDEX     o   CREATE INDEX principal_rendimiento_laptop_id_20e67530 ON public.principal_rendimiento USING btree (laptop_id);
 <   DROP INDEX public.principal_rendimiento_laptop_id_20e67530;
       public            postgres    false    258            �           1259    51024 6   token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);
 J   DROP INDEX public.token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like;
       public            postgres    false    262            �           1259    51025 1   token_blacklist_outstandingtoken_user_id_83bc629a    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);
 E   DROP INDEX public.token_blacklist_outstandingtoken_user_id_83bc629a;
       public            postgres    false    262            �           1259    51026 #   users_historicaluser_email_a7c70263    INDEX     e   CREATE INDEX users_historicaluser_email_a7c70263 ON public.users_historicaluser USING btree (email);
 7   DROP INDEX public.users_historicaluser_email_a7c70263;
       public            postgres    false    264            �           1259    51027 (   users_historicaluser_email_a7c70263_like    INDEX     ~   CREATE INDEX users_historicaluser_email_a7c70263_like ON public.users_historicaluser USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.users_historicaluser_email_a7c70263_like;
       public            postgres    false    264            �           1259    51028 -   users_historicaluser_history_user_id_7f91d047    INDEX     y   CREATE INDEX users_historicaluser_history_user_id_7f91d047 ON public.users_historicaluser USING btree (history_user_id);
 A   DROP INDEX public.users_historicaluser_history_user_id_7f91d047;
       public            postgres    false    264            �           1259    51029     users_historicaluser_id_5e70dd03    INDEX     _   CREATE INDEX users_historicaluser_id_5e70dd03 ON public.users_historicaluser USING btree (id);
 4   DROP INDEX public.users_historicaluser_id_5e70dd03;
       public            postgres    false    264            �           1259    51030 &   users_historicaluser_username_8f7ba123    INDEX     k   CREATE INDEX users_historicaluser_username_8f7ba123 ON public.users_historicaluser USING btree (username);
 :   DROP INDEX public.users_historicaluser_username_8f7ba123;
       public            postgres    false    264            �           1259    51031 +   users_historicaluser_username_8f7ba123_like    INDEX     �   CREATE INDEX users_historicaluser_username_8f7ba123_like ON public.users_historicaluser USING btree (username varchar_pattern_ops);
 ?   DROP INDEX public.users_historicaluser_username_8f7ba123_like;
       public            postgres    false    264            �           1259    51032    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    266            �           1259    51033 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    267            �           1259    51034 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    267            �           1259    51035 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    270            �           1259    51036 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    270            �           1259    51037 !   users_user_username_06e46fe6_like    INDEX     p   CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);
 5   DROP INDEX public.users_user_username_06e46fe6_like;
       public            postgres    false    266            �           2606    51038 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    202    204    3126            �           2606    51043 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    202    3115    200            �           2606    51048 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3146    212    204            �           2606    51053 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    3146    210            �           2606    51058 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    3285    266    210            �           2606    51063 B   djcelery_periodictask djcelery_periodictask_crontab_id_75609bab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_crontab_id_75609bab_fk FOREIGN KEY (crontab_id) REFERENCES public.djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_crontab_id_75609bab_fk;
       public          postgres    false    217    221    3154            �           2606    51068 C   djcelery_periodictask djcelery_periodictask_interval_id_b426ab02_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_interval_id_b426ab02_fk FOREIGN KEY (interval_id) REFERENCES public.djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_interval_id_b426ab02_fk;
       public          postgres    false    221    219    3156            �           2606    51073 ;   djcelery_taskstate djcelery_taskstate_worker_id_f7f57a05_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_worker_id_f7f57a05_fk FOREIGN KEY (worker_id) REFERENCES public.djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_worker_id_f7f57a05_fk;
       public          postgres    false    3183    226    224            �           2606    51078 V   principal_historicalmonitor principal_historical_history_user_id_05620fe4_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalmonitor
    ADD CONSTRAINT principal_historical_history_user_id_05620fe4_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.principal_historicalmonitor DROP CONSTRAINT principal_historical_history_user_id_05620fe4_fk_users_use;
       public          postgres    false    3285    246    266            �           2606    51083 S   principal_historicalgame principal_historical_history_user_id_18d9cb52_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalgame
    ADD CONSTRAINT principal_historical_history_user_id_18d9cb52_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.principal_historicalgame DROP CONSTRAINT principal_historical_history_user_id_18d9cb52_fk_users_use;
       public          postgres    false    240    266    3285            �           2606    51088 Z   principal_historicalrendimiento principal_historical_history_user_id_2b5226cd_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalrendimiento
    ADD CONSTRAINT principal_historical_history_user_id_2b5226cd_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.principal_historicalrendimiento DROP CONSTRAINT principal_historical_history_user_id_2b5226cd_fk_users_use;
       public          postgres    false    266    3285    250            �           2606    51093 U   principal_historicallaptop principal_historical_history_user_id_68441c27_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicallaptop
    ADD CONSTRAINT principal_historical_history_user_id_68441c27_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.principal_historicallaptop DROP CONSTRAINT principal_historical_history_user_id_68441c27_fk_users_use;
       public          postgres    false    266    3285    244            �           2606    51098 R   principal_historicalcpu principal_historical_history_user_id_6a0cac52_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalcpu
    ADD CONSTRAINT principal_historical_history_user_id_6a0cac52_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.principal_historicalcpu DROP CONSTRAINT principal_historical_history_user_id_6a0cac52_fk_users_use;
       public          postgres    false    236    266    3285            �           2606    51103 R   principal_historicalgpu principal_historical_history_user_id_7035fc9f_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalgpu
    ADD CONSTRAINT principal_historical_history_user_id_7035fc9f_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.principal_historicalgpu DROP CONSTRAINT principal_historical_history_user_id_7035fc9f_fk_users_use;
       public          postgres    false    3285    242    266            �           2606    51108 R   principal_historicalram principal_historical_history_user_id_ae301465_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalram
    ADD CONSTRAINT principal_historical_history_user_id_ae301465_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.principal_historicalram DROP CONSTRAINT principal_historical_history_user_id_ae301465_fk_users_use;
       public          postgres    false    3285    248    266            �           2606    51113 Y   principal_historicaldisco_duro principal_historical_history_user_id_ed8b58a6_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicaldisco_duro
    ADD CONSTRAINT principal_historical_history_user_id_ed8b58a6_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.principal_historicaldisco_duro DROP CONSTRAINT principal_historical_history_user_id_ed8b58a6_fk_users_use;
       public          postgres    false    238    3285    266            �           2606    51118 E   principal_laptop principal_laptop_cpu_id_bb8f7e67_fk_principal_cpu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_laptop
    ADD CONSTRAINT principal_laptop_cpu_id_bb8f7e67_fk_principal_cpu_id FOREIGN KEY (cpu_id) REFERENCES public.principal_cpu(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.principal_laptop DROP CONSTRAINT principal_laptop_cpu_id_bb8f7e67_fk_principal_cpu_id;
       public          postgres    false    3185    252    228            �           2606    51123 E   principal_laptop principal_laptop_disco_duro_id_ed4e8966_fk_principal    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_laptop
    ADD CONSTRAINT principal_laptop_disco_duro_id_ed4e8966_fk_principal FOREIGN KEY (disco_duro_id) REFERENCES public.principal_disco_duro(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.principal_laptop DROP CONSTRAINT principal_laptop_disco_duro_id_ed4e8966_fk_principal;
       public          postgres    false    252    3187    230            �           2606    51128 E   principal_laptop principal_laptop_gpu_id_73d78300_fk_principal_gpu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_laptop
    ADD CONSTRAINT principal_laptop_gpu_id_73d78300_fk_principal_gpu_id FOREIGN KEY (gpu_id) REFERENCES public.principal_gpu(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.principal_laptop DROP CONSTRAINT principal_laptop_gpu_id_73d78300_fk_principal_gpu_id;
       public          postgres    false    3194    234    252            �           2606    51133 M   principal_laptop principal_laptop_monitor_id_52905fc3_fk_principal_monitor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_laptop
    ADD CONSTRAINT principal_laptop_monitor_id_52905fc3_fk_principal_monitor_id FOREIGN KEY (monitor_id) REFERENCES public.principal_monitor(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.principal_laptop DROP CONSTRAINT principal_laptop_monitor_id_52905fc3_fk_principal_monitor_id;
       public          postgres    false    3256    254    252            �           2606    51138 E   principal_laptop principal_laptop_ram_id_78dd03b5_fk_principal_ram_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_laptop
    ADD CONSTRAINT principal_laptop_ram_id_78dd03b5_fk_principal_ram_id FOREIGN KEY (ram_id) REFERENCES public.principal_ram(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.principal_laptop DROP CONSTRAINT principal_laptop_ram_id_78dd03b5_fk_principal_ram_id;
       public          postgres    false    252    256    3258            �           2606    51143 Q   principal_rendimiento principal_rendimiento_game_id_948eaeba_fk_principal_game_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_rendimiento
    ADD CONSTRAINT principal_rendimiento_game_id_948eaeba_fk_principal_game_id FOREIGN KEY (game_id) REFERENCES public.principal_game(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.principal_rendimiento DROP CONSTRAINT principal_rendimiento_game_id_948eaeba_fk_principal_game_id;
       public          postgres    false    258    3192    232            �           2606    51148 U   principal_rendimiento principal_rendimiento_laptop_id_20e67530_fk_principal_laptop_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_rendimiento
    ADD CONSTRAINT principal_rendimiento_laptop_id_20e67530_fk_principal_laptop_id FOREIGN KEY (laptop_id) REFERENCES public.principal_laptop(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.principal_rendimiento DROP CONSTRAINT principal_rendimiento_laptop_id_20e67530_fk_principal_laptop_id;
       public          postgres    false    252    3251    258            �           2606    51153 V   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk;
       public          postgres    false    262    260    3271            �           2606    51158 S   token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_users_use;
       public          postgres    false    266    262    3285            �           2606    51163 S   users_historicaluser users_historicaluser_history_user_id_7f91d047_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_historicaluser
    ADD CONSTRAINT users_historicaluser_history_user_id_7f91d047_fk_users_user_id FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.users_historicaluser DROP CONSTRAINT users_historicaluser_history_user_id_7f91d047_fk_users_user_id;
       public          postgres    false    264    266    3285            �           2606    51168 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    267    200    3115                        2606    51173 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          postgres    false    3285    267    266                       2606    51178 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    204    270    3126                       2606    51183 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          postgres    false    266    3285    270            �      x������ � �      �      x������ � �      �     x�uX]��:|�E~�U��c�J}���*��RE+�S��_�^���x+�:�ì�)��n<t��a��3��_U�����������F��+ ��`V	tK<�7�.�ޕ=��藥�FU�4Z�g.N Q�6\���@���D����*���z�
¿uq��|u!���<� �$) *�\�
�Ӹn{wX�>�:�\�+�8q9U	|͵x�(�g�A��6��Ÿ��A0>����uk$���H��vH�+��������3�R�� (�a��O��0��'qu����e����;�ATp�$U�D��$��D�$��$J��[����nFucl�u%�����)r�b�����⁷�E)�^�v��Hj�[G��c���b�Hf���b&�h��b���?��נ�<_�1Ţ�%�.�u�;�����W�%�K�\���5O�p��ͮ��+�$�)�(��EJ%�q4˫ĂL���~�F�Iu�>D@��O[9ĺ?l���������4�[�TᎠ�{Ե���'�p�dǱ|0(�1���Es�е�汈J�.�l�������?C�I�N���q�ϫ�d�&2��	�6�3�5LK:��)A�B�r�s��~�2�� U'H�� �t���	����݄���ι3�1#W;9w�1r�n'��6F\��6���K`�5���+��e��"�Z�"2�_Q&���9�J� ���۸6��gdDf�Tg\")��s�RC@�N�o�\��*ݑ7��nD� ��%z��4�P��F!D$�����zR�'/�`O�u�F����@�`�=���uަ��*��������^�����9B���� !�ş�ݝ$�R��m��?�A�����;��p3D�9��_��1�Һ���t믇�[�Uy�36,�5݊�Fx�E$5����(,���ޤ,��#�n/Y�H��Hm��6�m�?f� 'rb�q�r��߫Q�;���ì���H���"����%WBA.RV�������,�aUe�+^̊��4��'��n��|�e8��-��������c�q݈+�]�8�q��p�"]������w3�ҝ��ɣD8	��$V����ObY		%�r��lS�7�:���3-mP�� �� A�~.��KO w�� ����è*<W�����^��ߵ/{�F^|�v�̅Y��q�$
8E]Q�X�Ө��y!~ u>�"�ͤ����?G��ߥ�]��W�WD�܍8xK|goI_��w��H����h�����      �      x������ � �      �      x������ � �      �      x��}]o7����W4,�]`� ��_���;v�x�Ifv7{��O&�(�!�3�����V�����紎m�xGQ��i�UO��aO� �:5�Y{pfb-@B��=���Fc�����?;�j�곳������Ě�;PC ����XN��W�h�y���5�_v�<��ȟ��[2>�2�����)�1����E��Q\8��'��BE�N�7���n�8�Y<��SL�bN����;�SK�[�Bȫ�0���!Y�<z��龻ټ:����m./��thL��3����i��E���n�)��/���<��{�C���U������Uگ�{!�>����ߟ���b�LhPb�xF؃���"�V� RDbiB�+���D
�[Vq���4'i2���_��`����;��3�w��¥��/��~�=/��~}j���n.>���s5�wSx�1�_�����)z�|��2ў=jA��[���PY��6i2�sjQV6�51b*�1��g�=&�!φS�[u֩�г*��HT{���G_��O������_X�����n���	�w�`��%sf|������n�
�A��K90^��wb�ݻL��j'گw�#���<0�gV�]�J��ɗ��=�:����*j{���wkÙ.��{�/L�ɾ'6`SQ&�����߮����^m�_��갋�5������� �h�ܽ{�L�
5��3�U����H=P���ǚ�Vaw�䝖8��/=��K��_.6����_��.6W����/?��֘_ί��o77�����o�^mn�|}y�������p���g�'����h�_ln.6��k����W���16�cC�G��.=�=��:��`��s��=&���ӑh��>�"~vp$��` ��c��jVeܧ}�#��#EOuf�o�!�u�[L�V�?�!��d�Q�鳾���.�a����e���,Ʉ;�P�T���mjeMN�}�2XVZ�����\��N��'�l�<%���|��3ZD�1��e����:߻O����K;[�nţ֩��U��K֜�V<jU����C(<(���{�(N5�c�x��A��]l�q�\�����1��$y+�^��}��kc��O�|��3�O�k$h��!+D�� 7,�{���S�����ם�r�Ѭ*0�7[#�F��������0>}�v�X������`R��BQϰg��Qc�9s�ɱ���wB��h���v�z��d��b?b��<������{j]�]��[��>����oI�E��Čl�r�c���G��?��[K£��{���P#�r��C���P"W�W�%nyUMU ��)5��w*c,ۙ��YV^���q�.�e�,��������W��{�4�ЬT����G�O�2QAIλ�LϜ<x��l+R���!
�p�:\��{���V��1��fs������g�D�{�ݽ��?+��/���ID�dc�A%��Ψ��2�c���\8(>�H�d��V���G`�J˄Ё���>`�1�-9�|bS��/��p8��O���=ʿ���}���7�wݿ?����^<[�~�N�{���sa�
���`-��
�H�x�5�]��#�P��H	a�sn2k�V�����l\����1J=0/ �}��ca��K=/gI��cQ?�r�����/c�:z,�ӓ���>��{̛�c��!C�Ŏ/fF�Y���Ӆ���FO����2�OR^6:�=������:C�O�<k��ctf��'�ް<k��C`�D�̚���X�Pp{f͇�c읚�p�s֢~̉��<�c؅IK��)`�[��`握�弩��\;����i��)PO�C������!"Q@�)*c��z�@�@�X�`�����N�h�xxb_���ρw�c���lW���{g��k��%�C [~c��/��M��~i�Y5�^|��\�[�l��{�<F���J���!?����H����� =�`CՓ�1��x��2�b�B��������̖������.bsglǣ��?s��r��&�QH��ת���,��\�Q�N��v��Eg�˛�˷������ۗ���7�/rd�yӝ_^V=�Q/�� +�º��|o�k�P�^�&�g�����N�SJ;����1�}�l��z\v{(�N�I�*&���YG��#VM?��i���Dv�7-�PyZ����z��1�$FP|~ �����qI6!�,��ݩnWNu˳9T@o~�m7ۙP��]�AWbF��#�&vC�BG�<v���1[��O=��z���~؋�% �q�!NO܋��xA4Gp���n-a��z {���vǈ�絍E�}�
UF������X���E&TW�LG�����Z�i�e�=��C��������t�Y�'�dp��:ѫ���r�W��u�}�ß:Ņ�k�U��MNԺ���.�ݱ�]�]���	�0zB�B���;�WS�Q1T-�MY��C�� ��YAhU� �H����G�Zֻ��բ����*a"))I��aI���\�f���Z����n�N�K�.a �>y���:}ي?=}�F�/#��ޜ�OS���_{�/���s����;J�����g+fkD��ZA��&����_���2�A��2Ah��$z\U�m*G���3ˌm*����r���1v5*���h�	E�<�=�%�v����,5�>1q,,�u娍���N��){	�`�Q�S��y��H�>H=������p�&UZL0�C�h���[v!��oW~Uy'�L�v쒼�{�OT��M�|r�L*^��A��U��~\)�̎�#��l��u	����@F��4ɥm>�#]{`� ���y��զ{}}s{��|�2���3}0օG����yI�������N,9�M��j�--~,�E//ơ��B����hb��k�P�cQ�k�|��%"�7��Tj���3¨�(Q��=����&�6�;S �-����E�В9s�}�n�&��j��Sz��'�ﺬ4|	��#��r�#�5�(X=YkBK���'U�/ǻ��0�P��(����ˑJD)�;���;O�Q��۝��2�w�;��bP�1#��L��\��I2�x�X���X$�i�B�Υr=�;ɒ��Qv��1��>g�ρ�c4��	G����5�0�������9"�J�&�.�X��slV��'�~f���ܙe������䎘$Kz�H�,�B@(g�C��Q*�ƒ^><�? D�D&�2v���z��R���k=��c@&#��#�a�c�3����9��d �!�D���@zJ�j�����^Yf����������=^X����@z���yӒR��8S�����$&Y�P�e�8H�dH6�i��Nf<j����4VL���6�h���5[�9��7s(-%�d�?�b1�ӫ�͐h��tH2f>���R��cO>$_��,��y�W0?���`���m(�ğ�<�����ۚ���׫U����Cr�0x��(?NǛ`(ް�^��|������qhhؽ=�Gc�^�.���s|X�9~X2<��P#��p���8�i��5�j1���z�g�]�E�@��p�4�l��}���!⬺*�Ӏ[$o?����>��#�|D+ᖄT��Vh�qǈQ�{�q#�|DV9��t(ٰ������#�E�h����~>"�bH&��F��11�����Q��/�=��V��!�|Ha;��`6�9�q�gr���
��1V_�����9ΛyTN�w����-��!X\���9��G�T2�\�E��m���Ĳ��:�|���������t��[����-G[:hYl�!(g���bx�j&�����I�kvc�\�5Y�� ���'n������T>��ZaS�nL5x�6���U�b~N��4T�j��d+��<$�n}���iL��ͳ��mnٹq���d{j衺�)F����� �w&D��Z@��t�4A�� �$�)�kw{���h{)��mE-N�P��d{kSMl�x+����v��͋݁VM3l��RW3�ꄷ|S�Ea5
�0c�R-G�    ��V|�������ӣ&.Q��\`"�:��e�V�EI2Vr�"0�ffIKUc��^O`f�L�3z`�l�w�F�kr뎀��I[ �/׃��{ʤ����yb��%�ZK�j�Go"�'B��j5,E��������j�k�ydĐ�T��(X�vm����B��X�|-��0�¸�%�j�+�CMOR�bJVk�\xSɺ����Y'�;R!��к��33���8�kM��x��S������ ��S����C�gk�灶��ę�k�֑�!�fj7.��ЖO�^��&�)]�vO�G m�%T!�:.��MlY[V~|�m��p�g_���h;%U=�G��'���7ږ8+�鑽�ri���)�{�~�3Gҏ}�Hi��cM�"�p ������q�r�6����x��Ǔa�Gj�\]�p��i�%ggb;��ɜ��8a�6�82���aS�t+6��F��s�?k�?'R3]p��fj���'-~N/���>�j�?���?4�iؽG��˵�\����^��
���.�Ll�A����i���d����
<�Q^��Η���:(4�g񒶐(Qh2�f+�����E��*�k}I�8)��@��ڻx;!S����O�j��6o��!��K��'�=(�S$�
��#XWRp�$�u+d�,�}��n�*���K�#`h�;�V�Rh���?L��q>i�
.g�KIM�;�L�Є��\)����tZ��:��ڍ���6�b5��Z�i���o��sS�E��k[�����b�����T��c2�+��|7����s�nw���H���� �[ɲ!�O��#�nfL�����t�f9���(�U��DM���=�"8�FL MPO���Z�\�9�����Jl̥�1b��٨بĖda)�m�iy��r[��h>� 
��9D�b�'��k�I����jy�-v8`Y��2�WK��ϛ4Z ߶��i.9/"0�����'�&9P�A4Mqf���hD�D�����}������W��"��5���=4l7A���,���l��f��c��j���Z��q�R�05D2�~f��m����§p�f�ڋ��ȹ�BA[�a��� Q�	�m�2̌q��ї<�V��0��A�_� �m�Vmq��b�֓�ؾ�3��G�y�gv4�Fb�Ż}qbP%P=w8���F���(��|d��e�'�����lѦ�`���p�o.��ڝ�v�ĸ{����q��k�)7�)���B�8(��H�7!�rW��-�q�����w�D�5x�x�4�HI��"�� u�d4D�H�Ι����Z��$HG)6|�uX��E�vI���〢J�:Uj������0�3c�-�&�<�fE�UҢF�T��q�4*�p�j���q0g$(�\�R1z(�۔��'J�R�f��@�8��3����F�U,�<��_�!�mӌm��A����IDZ�H��k��v���;��y(��̱&ժW�V�d"���,���H��
;%��}���}m�/�wYg^�_b���85��Q.F�A*��{i�m��Y�&�}�Fj��>��C���f7�m��gAᨎF�ʭDpBޙ������(��`1Wϡha�K>�tҞ����RV����l8yr����_]�|�}����e�]Q��Nւ�J�%�p�#�@]	Q��1�PJQ����龽m�F5G�Y�./]%SΞ<��Q���U�����99O�����/�6/o��]��q9�Z��"�~uq�xg���u�\4,&��� ����W��/����_[��^B�r�qJ5A4������y���
�z^��GB��;�j���n�?^ܾ�us���@A��V��-˿8�����y�7]q>ۓ�m��]��v~�O�٢ɩB>�O-e�7���^f+�K�<�S%p�����׷W�67����N�;氺����x��{|��7����jy��**G��ܺ���/�oί��3�n�s6��ZV�W����ߺ'�������fMS�Tv�����~������{���K���#N�69	H4C�^�KV4���t���nQe~��}FT�8�)��0�ՊWиj�^��hEk���}����sXL���˩�a�K��(��R�&J�B�Cs+�@DLƅF��l捯-<����Z��94b�ȴ�V�u�;�?
4��r	��8t�np�2���$�D�2�bs�r��44��F}�E���lO�׌{����P��7k/�-�f��K��t~.�A��� �ڌ�x�9�|�a�+��f��~�7�"A�pp.n�~@{S��)�f4$w�D�.���>Dk�9EͨH����|�NQ��q��V@�H�dKH,羖�~�%�e��F3&�į�х�V�F�͖���hFARn�����aņ0�tbHkr-Y{y��9I-���4���Ϧg���@���[B��{!M>$�{��J`.�Ip�Z麐f��0\��A����?_^w�x�Eڼ˕W��e*����i�}��wі�!I�`�ٖ-;Pc���sN[u �2�	���`K��9sNr�`�zg##�1\�8�m��,��`�ګ4�e�pN�r�9H�Hl��qB#�ֻ8Ns�������dH��k3�w�tڶ�e62a�ɖ�%�.�c<�8�6����kMI���M�8�8m�&���U(��b�}�ӹ�l;�QHN��M�R�Ob�S���;�\(����+�А�3����"�^���B��%��Uk�0Е<�k~CX���T���d�a��(�׼�rsy�l(����������^""9M�Z2~�wGc=He�&G�FX���d<yv}s!q��������}9x�kB��1�R4	S��|���4�2��>��L/�<�H�ۓ��~�v9��k{/��}K�n^ld��!���O63����:2�7��W�z���L~����%ެ$2���v���"	3�$��'���?�
��Å�U����`O_ߞ�9�
3k���S�$�|�e��;��T�
�Mr�i'NW>b��
6�Q��c��S���l}l ���0����[}i�J��]���E�6r�HM�U����XV:�A[[g�@�fʝ>�j�>6�5^e�UBǥ�1a�h{����r�6�Ҝz��+N�3'�� g����v�o�Sd~�����c#:x��Yv�>	�~nI-��+��Xֹ�Q��}}�Xs��K�:�5jB���X2P3.��c5�s5'p�����4q�E}��%jJ����0��U
��z$�����n�dw?�J��Á���*�jT��Rg���&I��i���xR�F�M��oȞ ;0�h�8���*c��F%M��0�.`m���f��hT���!�I��H��,E]
ޕ7��wi�K���j)��t�F����7�;���;袌?ހ�l�|���vpQZķ�m�F�(��-���~tj�WfTe���fLL�K}�eF5q�{3��R1�ܘM(�z�t@CW�<��'d�I)�r��]���u�@) �ɽtX��N�6��E��܉�)�3�I��rg�C˦㠋�4k��� ������+��nG��Ɂ�R�D���Y�XC�V�"d4őC�����`f)H]㞐�4�]{��2r�1���j�D�azOFSv��/%,I�ߥ9d���Ѵ��9�_ 6;o��7�g�@l���QM�k�
JJF3���#�����9xk�(��	R�ǻ˱T�'�n�u\�̌��<Ģ5C��o%3�0A"�M�K�!v�9��H(�����KS��jxLs ���d����@� ��hZEx�b��slRc��m�� �&\�Kk��7�a[E9-jx ��<R��q���D�|Ӓ�����5u�MR��Au�kZ7G&W2b)�pA���D��92V#>�����K�l�Z4>���|ab1�����h���=w �����-p�H�M���LO��L�L�-p+4�ȉ�1ɺb�.���w�J���xɱF�fj�����U��<7��ޚ`j�x�
��� �yF����zJPz5$hS��sN`F�r� d��$n    ڂw��Ì%	\�D�$�&�7lm��-�b��}��L��\a[פZ�S.�J��&�����f�)I�[����,�]�A0�M��8�N����dK; �g-h�dsL9�XO�S�d�6�:l�W��'�|W�ЙRr̘I�I+�{��y��R};�d	;N�m�A�57��A�����`�\�+�J���1u� a�M�;�@PS���L*���-i�*w5+������kevIjIަ��t'Q󒌰����r�����$j>���%�Lg��l�5ӸT��lN4��M9�ۓ�o�tu}�����_�˿���иphA�B<�e��v�\�<.(��~�8z�&[� N�}7t�y�5����g��o^��_^ln.6�VA�r��g�Z����E,����\�L ��|��M�94�N3������t	q����	 ���!KzX/��&�p�n��}�C���w?N��S������]��O�y�������\)��I�O�m�.6W����/?��֘_ί��o77��C��?__�v�]w�o���ׁ$���c_|(�����:�p�8gF/�� c(�C�z��	�]]�I�&���#��L��{{�f�|O��Ϭ�3n�g� }�O�'מtq^�U@%p���]�0tkl�d�]p�ƙ�>&��-�qO	p�;?y�����u����;GNS������t��D�M�I���ujs�U�O��6">7��B�%(���I�N�Q�{��{uҸ�:ԲSF5<���|\�{z�Ҹ���^r�&{�G9��'�^�����/���o~����埜����ы�e
�[O���u���9�:WQC�\�'y��&�մm
Ҋc�q��N:�J=PvGK�'c�V	�;|�>.�9 t�	mi��ne�x�P�[�/���/JW��Aës����fAis� ��="p�i䚠�q	�!��1K���z[���}\�r�H���+�!�A�+Oܽ� !w�&���f5���r��0s%,faU�nC(����k#=X�Dġ�dl�x�����@��EX�e��!^�A�#���8@B�#@	�f�͚��IA��>��R���*���GaFt\�q �P���P��A��3Ì��r����búfU�K�$�d��1.���n�Ӿ���y�}i�f��;z\ı\҇�6�$�}=3�X�$���z������g�O��~M��G{�c�{�)�lЖ�rbL�*D�y��Z��m���ʺ�d|����2��^m�6[
�K�t��(�-���Ma<��m���>�	��C&��0ĕ�m�����%ǎB5�Q��p�qo��ޔ�ZB�X� ���ĆQ��p�6�� ��(�?����m�\��Fmȥ���Y�P�7�]�6��s �fT:RJ�? ��M�\���	��;�� �mNz�q�z�ċ3k�N.����x��3�% ��h�����ZS���qF�lK�<��dJ>4���;g�'�f���6���� ���&?.�4#����JТK�&���_fO3X�i�6Ԧ���u��\w"��H�P߇S��yG�n'��j��YK�q�3Û:��,� �j]-�Y�%�#�j��"K����%�����z���������Y�H�k$�:����k���NY
��Q�ۗ��u��A��KqO�XI��ڪ|[k�5|���4@2D֓-U��f�s��1s�.���еjV9_��2��IWȘ�+�>a���5���.gf$�K@!S�hi�٦�8�o93#.^��2'�π�z#�a;�j93�.!~�+9��(��N�33
� "�j�%�	�DyȽrfFa"�a�\�����h3��8V�h#�6��`K�e<�$��uF�iՒQ�6�s7�����m�)�hV��|������+v@|��!,�ĩ�����7%�w�7sV[`9ӎ�G������&�vʜ�&WίQ���z(}<}c��c�jK+�ձ!_��F�Yڀu�sV�Xix�=!�TR 7����u����ʙ4{`�tJ4�?q�a[�{9������3d*��0����5^��ڪR�hrK~@ۛ�u������b��Ԝ�_�gYmޥ��ep�tml=���b�3g�ú�qC�v���@�c�Y��X'N\c�{U�ɇ�A��SHu�pTڳX��)���J3���:����v���@�'ez"��m��vP�r�`�@�
�X3�����2�ʅV�Y΄s��(N6�u�_l�y<X�!,':�j|9��]�p��iщ�w���G�s��פI�۷���R4/1�L�l�|�Ϛ�}d0+�)�V�[�)=�@�$UK�`�� ͡Q���P�wi�
�A;�U��Ȣ��J��	H�������9>��l�ʢ�C�����4���=�T�-���dS�V�W�st Z2Au��]I[ ���Bmo%��DT���Y���s�P�|q�[oR	uO��y-�[�j��!�Oo\���ͻ&g������D�T���a�5?��A��G��M![�t��) ��{	�����l����H��|�t�����O�)d�|/�$�\_1E��������Trז]/�l �阞=�P�K�p���ˮi{LQ��R-��
���fs�� �"8�)}2���͗7��o7W//r���l\�v�����~y��������7� O�E�,gD��v$�_���ʢ�E��L*[K���>�^��\�w��:^�����/$1rX2K�vD�����r�_��9�s�\$��ӻ`�9m�� mU RobH�Ory�I��_�Eλl��"L�;4����QqȎ��EP*�$���t��,��9��+����
B��v��1<��!_�w��kT��򁝶����E���?�6�o����&��np�}��m��:G��H���p�(�Z:Fz�69����1/L��k4��@����s3�s�AMU4ь��Zy��w3���C�j�CS�ư��V�܌��fc��P��#4�@׻�~�e��F��H?�6g���g,FJl�R�����j-b[��O��Wߛd\=Ml�����~��9׽�t����:U�uӺ��a�1,�`m<����=���'�;o֥�S�i�=9����_��F5ٟ|������E�=����kE�c�O��ؿ$kl3���겸!`+.����b�5lc=#�|vg��xؗ���+0ѱ/��J9҉av��̃N������"m}�H�D�4dm�\�]O�����b�P��Ĥ�JZ���͞V�c�r>=�T��ҧ���A��i�=���l�-/�Zj*������t�x�`����,�u>xдA�b���	g�ѭA]������4�'j~V��A�"D�%5lH��u�{��:h^�(��裩i�����P��`��GH҈Ø�j��f�׭�=��M�%�z��n�]d��r�S;-i�;���b�u'�,�ۖ��X�UC���I_�`����軛�ˋ�G>.U��J�]..U�}:�v`�	6��Ğ���� e�� �Eڇ��ś��ݫ�7S���\4���شU������!	]�/p�{S啷v2�X�)C�z��8n�ĵ��_u�r���%q*���\�cgi*ֺ�fG��r�{I-��YO�92��H�G�h`�u�4VBK�7�D����&ͥa9�u%x-=�4�hi���G�1i��܇��ji0��SL�X#Z���h�@9�Кᾋm�J�U8K#�E�Ms�&>�4Z�Rί"�|�Ig�J��4K#�:�3�%�E��!��j\JW��X6RE����T��X�h��Z����L{1����mP��*����I�T��4�73M�]�d�~�����hM�|���%� �}H���Q��h����!"�`I����C��o��7S]�r������+B8y������5Ee�;N�?�xO�v���e�C��ei�\�}�>�����ۨyY����l�W.�o��Z�,K�$9��'���E����E��EIsQ���g��F���?��-Jc��&W����db󦞖�:>�}Y��Hgųb_� ��Y �b�\�z�Y�U1܎ �c�6��r �  I��H�%�A���g���(�h�-I��G��uJ���<��	����ȣ��=U9�`^FB�X���û������������յD�t7��]l��oQ�\T���Dշ"j���F$E�P��kE�4U*��`Qbe.�ʄj�j�h�sp�Η�c��|^�sIyDLu�B+��\T�uel����I��aI�?��D�kִ"�6C,��Ŧd�)2{��H�M8�,�����I8�/�f��ܕJ�~�Wk�2��������fbx�p���ݞ�wk�_��K��?ܫQk���P&>૵:^]� ������uxuY���5j}9��{��g��Z/����|A��8��j\Pj�/w��j��Z}���fw�ʵ�܀�����s�����^����n�o@x`�;֓���M<r	�N�E�z����ϛ���v�vo�C\n�K'?������H�E�FU#�\���X+�ۓ����rٝr��s�N2L���bE,������?�X�Ģ\ 4!;�%d*&�Ӗ���v�E�/иh�C��XRT��>�i,�>�=�`^��7��w�;���wRG���%k�.e��_@k�*X��|Y����B^J�,z�{��8�`�{Oi8�ČG�jr���W��]�keG�������깸���������_=GG�_k/g��^�� �w�))K!���K�~�)�WX�/ [�X}�x��4�C7�j���F���u��PZ�����m8`;���η�������K8�z�7��F���q��~�x�O����\}]Z���G������)������p��Uln�mG-Oo��m��tԼi�R�桖+�Ko;
ۂ2a1\��\�k0G�nA�S�����Q�[P'���z�����[P(!Vx�G��z]X�(��J	Y�>j��C��z��}*%��������޷�TҠT�Yz�q��Պ�rK��j_ �+��O���?� �߮��X�?i��d 2�������;5�S(A��{���-s�d��dd��\2TB
2~�����M�lsyq���7�w�PP�i���{�yZ��8�jF�s�1��[M�,r���OΆ�x~����8:���)Cu"��kM�Aj�����S�d��h�"\��*Qm���~}xy��○��//~���1�`�����\_��Gm�9�J��+�8i��9g�d�
wܷ�~z�Y��l���ϛ�s�&�� V�ՠ��3�
{��e��̶`8L����q���Z4jcN��h�1V_k
�k�Mh�{��f��}L8������&(r K�Mə����0ߜ�<w��!������'�D�Y���ک��m����ѭ��H>Q�)S*<���c~��P$�7�qEXA@��	��͏��svӻH0x�w��k�}!;ϙ_��+>� ��R*�
Mw$�(�L��V���wݷϟ��������hPi��-h�S��5��8��m��a,�d�{�|P��L�������5�ӭė��� ����E��U�7?���ȕ�����}���OoҔ�r挷��6~B��;��hM�Er!$_�굕!�~V��3�r��jQ�V���s65ᑫ%�]@��A�Y-�'Mt������X��#�e�D�IŻނ�%LӖ���vs~y�+���{���Ԧ
_�3�֬�h�6?������?*Ѭ      �   6  x�m�[n!E��b��乗JkB��0���KH�!-?ν`�3���̆}NWL�|a�3D&x��dN�D�0|��|�H����ݠ�v�&j+�C9$��m��rXП�V��V�=w����P2e������YL�+�e*�ڐ
']R .:>ߌS\�&|��$�m�
Z��Pjo��3�a(����[F���ʘC����*��Th1]�J�s�LꂺX1���=M_Ү�f�`���ʒ۱@ v�r#������x��F=��;���N�S_x�:��0������^���4�����7 ��/@      �   �  x���{r�8��&��ƥ���g�*���c��=��$B���T��>����f;��8����B��0�nؠ@�!��ϠZ�U�A���N��������>^�����Q�
�E��2�>���BP��I�N������|�1���7?��=��2���R7]Q�3��.)��h�E�S�K2g<��:�9A*"���Cw��0�;vꁱ���7��l���閎�'C�C
J�p7���®��������4N�П�ݾ��e	�Hq��jh��J� ���V���K6����O���=��\�ܔ�/'Q�O���~'�/��iO���z	�7�r BBb�M<���u#�*�a�����8*'�|���MV���Q���eR� h�r��'�>!Q_�v�u�2t{�}ö*2�I%�b�m��5��@N�N]�f�G�s趿�p��&��LQ@��F?^���w�3��������8� :I���N`���0U��,�q��ڭr�&GG�@�#�57�DÖ�V��F�K��Ӕ`P�r�k �!W�P䘛��C�O����3�#�%�C]ц�����
���Kx�D��M5��F?�c�M�_����8��A</���4��6�X�_I�U��(M֤�@P�Ï#
����A� -�V���
ȷ�A+�Mlk����m�!�y/FȖC��q���7Y"���H���P%B��v(Z!sE�.f�P�@(l�hX�y� S삀�$�h��4V�9�D��=(u
դtD��s��p"����-�U��G���jE��dM/\V�C��r_�b!Kq��DP�d�N���8�V��Z��<�S��R� W�'��r��R���+JG8��HԷ2WD)N�k�^"؊N��ܐ�8����4!�>M�y���T���B ,��!�<s��R��R'���D+��FI��(ՉKu�B���`�m��'%U��ĥ:�dN�V�ZG��J�(��~m����\������b�i� ��4�űB�,O IY�{r��$~a��y�U� ��>�yԄm7,��z^���߽/�˦%�CT^�U�Y,*���n������(I�˄(5�E�p�b��jP� b��EkrI-��,�1�w�R���d��fGJ�bQ9i�]Mt�5��I�ӹ)��f���:H�u~ ]H֭�U��R�'������ �#.�      �   /  x���K��@  �u{�� �����lA�V2	A������Ow2�l��}�n�s��Z)!9׷�پ��<! C�ڷuj�'���Do�ƅ^֌Y�Ӿ6���sX}�`���T�z|��� �N����1�1|�m���3���c/L�i/��a!�E����#�멪��ʽ$t��ui�yZȽ��_�i:�9.4����؋J�aEuBNw���Of�2�Լ?��Y�`�^���w1�,7Us��c9�a�w�e�d�� /~�*���-S3��z��{�M���i�q��X���M�8��`x-��[ާ��}�.���~�`�b4�E�}��I2˯Ċ�)J�-w-��P�-��Ǳ9�w8���WQ��1�f j���MѢ�����vxc[b{6���'����hZ�����k�Znv����m����7F7P_�;�9��7N@aԞF���IUl=q���R[�f��ަ��߶�@Pxm�<��"R:7�����������MC+~T<�<s�
���,g��3 �(sPfŵ�cA@?E�֫��7q��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x���Kn�0D��]l�)�7��^���R��~� 8�Ǚ�,�Aʪ+���xԸ>�S�fz�A�ub�I:
�=Vl���ְ���3�,S�Ұ,v�J�O/ �>hJ-���z/co��N�B�UG��@	_X8��`���T6Y��&��	�l�l��|�{6z�h�0?�M6ڡl�u��(��������+��2���Jَ8E�%�[	�T�(wL��`
����'����F'�AV++I]-u�;��E&���	���\0�>`�H�����sV����
X��%L��m�n�b��YV����H+�]�q�9mF:��Z~�������t���͚C��3/�Q��� �ok�&?PgZ%*�民(�Қ��*������aY�5�R_a��B8�ZܴT�	yd���-��	�V١      �   p   x���=
�0�9�hH�Suuq������1��
��|<"�L̑4��8���Â���!��y
�p���E{qm� �h��>:cmӉX����������濯 ,?;b      �   '  x����NAD��W�`�E��DCv�a�0L��F��w4�hҷ9T���j\O{~�}0��?ϧ�k��<$^eZ+-�Gɚ�2�,�FrlQ֨�v\[<�6�/�n,�Ɂ���NmcS�ג��v��1�Z<�-ct��C��X�I5�:p�7�xfA��J�s���dp&ڥX��1�����7Tn�J6�O�A8���dJ
�D���T9'��L�߸-'��g�X�i��L�-��g�?�� �`E�R�is�b���=v�M(�B�8o�A%J嚏+ ��!��      �   �  x���1��0���a�"�q�dea:t���>NR��H{R:�Z]�>�k�!�_�����F��r�O��~�|� L7�,�9@b����۲����ʶ�ϟ�	�|��N�.�8������_�0T��`��:-��m�m�Bk��iE�M��B�/;�Й�y�%+9�S:��G:��N�\H.�����0�:���,`�ԪV<��xJ<v���T퓵�|��u���l���ҥ��|��F��x�K��E�M�!�۱�q���K�<��N��-�����F ���\���J\/'�&n##GC�n�j�`��U��j�&<��Z�u,�I�*<�Únw����NM;N�r�	���+w�s��>����S�V^���/?f������u'�.~�㾓����`���.]�q�6l�G�0�]ߒ����<�\�uW*���R;۝�!���ť���J�E�η����{��[��/bP�#      �      x�ŝOr;���z�x�g��NЫY�u_`�����Y�3A�T�a����j�,"�  ��>0!�J�+�ɗ��� %���^�#}�%}@�`���>�7��ʢU���~��>�e��񿕞��߿�5q^�]��7<0��y�Z ���
�?6��=��rD��Hy�ZT~&������}�ƞ@�#���_@��'"}���� ��R69 ����PUa�!_�������̑��#�E3)�@���8z@7FJ��?#���T�t�XKfey�� �|���~Y������!�����3HyP]�(F���KJ��4���X��7��
\'D�|Y��:����g(g룇r�> Z�Q��K��P��l��(���%��HR
$pJrf����+P$1�NKM�aL�IT�$g~�7&�~�e���d���g�F��*-ђ�0A�r�r�Y,?y��ݵ�?�t?E��/�g$g^6�|�eA;$��r������U)��ἐf����7�J�(� [�R���e�IU0�$���@�������В�ٓq��ճ�J�d�� �,bC����Q���*H�E�r�*U8K�P�a! �(�KEU��ez,C�E1�-���K�z4D�0�$l��\���%p7Ώ*��U3Q���p���d���9j-ÃqqUɍ[>��?[�s[F�}�\����&�ON��R�Z��O-��ZKW�z$�*9�
E�}��5.�MV�.�L���@���,�~�/�A��b�0Ӣ(p��/ھ���8����U�JtA�!ݲ�IZH�j��I��,�I���b�ԏz�g����(�w-*gB�k-�����D�q\�k�5�1.�j�bQ�0C����=!�E�Z k�_�!�"0Dy X�J�$�!w�������=e1�����+pL��"*R�<>�t�9����%%Ӹ3�v�Y̬����0�R���� ��g|KmY�,TA���Y$����!�+Т��P��Ä1(Q[>Qr��Vie�{�(.�-/[<�ո�|��Du�Xr�7�Hd�A�-�k�Yr��RճĬec�Qt=�MM��*���D�����Q���6IU�c�{QrT�'
�J�ۻQ�����̕JE_F�2F���܀^���,�L-�%�H��`aBF��e��(e!jN�n��,l,5���PeHB�sK"�g���mB4bG!k��ʚ*���0fLJD��$R.X^�A�R[��__�cX4�,��&��#�{>��-�Q����>�����(��k�X3��}�Zk(K!-�M%j-��g�|�}�Ҩ�^Y��޵�޸�iT[�j1�P�ׇe��i�[`��6(�b��t_��z��k�~	�m��Ql��,/��t���vL���(� ����I�]�D���L�=�O9CVJ���Y01ţ�{Pi�6���Zf�ڕ��D�Q��|A��hm�Z+ॣ�����֒fЅ,����V���)J(�O���ZV:��6���������$��2J�~�s�A05¬Gw��mwsf.�}g.5�0~x����?VsqþZ2	a�e�:̘i���T����f*E��AT��x��K`~�ҕ[�E,������m�Z�� �g1gAT��ķ��]9�Ԙ�#�k��#K�U]�ԍ,��2�Z���)x�')띦�ho��9s�ra��/=����6ʛ���%"M$��/p[}���P|�C-�:����������%Y�=���g,��!���ͅo���E)�.�N@US~}U�� E�E� ��F�o�QA��k4d���w��4���e��C���
R�_�]��������
R`�;
�t�UA�l4P�"��t�E�h�hJbn2ڛ�*�����pr�J��
�a/�_
!s#�7GV ��9(�$�C�7#�hTX�Ԭ7�_��o���pf�����
�����Y^��<�$zp���0~B!���-�;%J����m�ij���:CRk��0��XfjЂB�4��8��Z�##�zl�r[m~�<Q�a?hӬ��đf=*0A�<a���4f�Z
{|f��[�(���yN�]b�2�iɉ��':7�OE��8؄&ō�oҧQ�)j���.Y@��	��Q��2��N��Ak���A.��hή��\%^�xE�hp�p�B�� �~�F��ӫ��{H�I��z{�����ƨ5
�~��r~=a��(���+I���N�F���_������e+�TႯ{�1���\�ݫ�(T�]a����c������a��T�8�<7S���i��uX���)
�V��qFM�tp꒨��2�y���8~�p�hk��έ=̈́>.}�*���O��{��k�md2�>2��Fzz\�F �mL3b��q]������q�Z�Sc�)�.��Hk��F���$H�1���4Z�ш�rEmF�4Z��ؿ\��䩤����Z�\��7����h�Ψ�j�xé��+s5
�����p'�,��=^ijJ����7s#��bJm�u��̍�4������d5��Ƣ%�n �fĹ/�5�\��7s_�s�����o�{�L]�c��M2�qf�����WR�Q8��S�.�� W�kG8S��)�SS�*A�9��9�8��lG��c���@e��T�Ҩ �a+g��T�(��r��9U�4J���Y�S{zLKE�yÖ�������8�'Ƽx��0w;N=j1?R�..�y��I���c`J�0�@�O7��]w�@��ʋ*�򆐢`�T)o؇,ԥ��ʮZvZDQ��S��7DE:8�$��n��Q��ǩX�"�c���te7r��<��}�`��U�s"�҈��"\����b�
6�M���ѨVxC@Q{j��-�+KjHDQ{bl0�`�G�v:���RXSz��ﱧ�c�g�o�c[�Ne�K�3�S;�8e�B�o��>��=q��w�W���ɪ-��P
j��u�����cKG�p�&6{�4h���jG8N<��=Y�;�[3��s���I���My}dFYMG��e��rigNG���Tʕ�o���c���p���6R���Ya����`�|%��S"�z�CaJ�N��x<��=���]u��q�nwVx��z2������8uɴ��u���6��-�K'c��p�����X 4�U��,~�ZQ������IS-:.����e4���f�ʒ�p��i���}��B3_	�F$y��}ƚH��$!J�_�T䒏+j���(Ÿ^T�$���Q�G��v�9*�Z�8ٲ*�`:S�&F5v���<���Q�q}����̳��Ȏ�-1 u��(bTd�!�6���j���(���b����ݞ���"h�<�P	����f:�P߰OA5��K�?\1�oRG�9-Zs�E��7)J��L�^<��g�HQ����O��|C�	RTboa��?}C�IQ�����q�w���p�8�K�
|��;�%��l|~OR�cǑEY�h��@Q���.��y�\����X�F0��z�Yn��;�.�&��f��p���U�5)��&7r�
-�*\�n�7�#�l�W+u`����6<��ֵ�����ͤ���؅�4u}�[�n�d6h y� Y/��rS�><�Y�N�S�Sa�;�c�F�V�t_l7�<��9����W��	�Y��Q,�J�wtn���&����-e|��~��<v�9
�7�eI���|��<6�m0X�y>�H1�[J�`�\���H�D�4�U�ʝ�C|�4
,��
b��r���(��&����5g���J�
�8`�	�{9J0��a�r)��rT��j�r��(��ô�!�`�u�h�dE-v?+�9�α����|4�S��]2�7�(Ǵ=��*2;��Q���zU[J�s��x{���V��$37z�����3���1{��-�+�6C��6b�k��zj��nǩQ���0/�wo؜ը�[�h���ǨQ��ZHL�py*�Z�U�F�+M�8N�b� f�t�g�%G9f�R (���K�z���pT�/5����<���K���8�a4�gN��5�qd��J�I�%���R�>�f�Mx|� 	  !���͒r	֒�Pf��6Z�p�o�eBކc������04�m8y�B��p^��6��@�!�&�ǢRb.�ʰ�D�	o��G�u~�I��[Q��/���ʄ&����`��o%Mx�X*S��!b�ȱ?�S9փO�ejG��{�w�^��ej��k)����q�F��R
���н���b�3��/]$7h���z@OYK{ׄ��Z�8y��ްa[�o8JU\Y�c�
JQ�a�_ �yÆ-��ȎS,��i|�;ȡ�p,�K����%JQ��_�L�&)EMv�?�R��aK)
���O�����s�C)��FS�b�ߖK�������+��p:z���Br��mD�C���^h\Qj��ϣ�!0���nĸ��g�AQ�i}�d�2?:&�Zl8���+�/�%�R�4�ٯ�R����(Ťނ")N��� J��@�B	��3��!�Zl8^rR
��x�DE-����r�r����BLe����-���&J1��Ò-ݜ_�O�hq�F���p~�G�hq��D�&���~�hq����r%H�nF%��g��S�i��a�b�3�\<K����Q��_w�7�kG��i�.�\���y�o5���2��61
��HZ��:��0
��xAN�]�y��(�NC�����Oq(����})r{����&E1vY��;�p� ����.��7��qRG��q2�^�2qQG�-i�:�oݼ�N�X��O�̿׎(j���eVx�}/DQ��B|�ߤ(�R�"LU߱K�Q��4E���7͈��W�{����;��Q�'���Y�g���it)5��MZ�Z�(�+Gc����Q���o�4�(��Q����7��/� nԸ���Wb�!n�-.�/��@�T�n�yl���mC~J���7�=x_8�H�.u���
ͯ�c#ކ���c�9��،��S�^�85Wܡ��#5_
rF�H��;�.���q�~�'M^P���-�c?ޓ���%F�3�!�i�҂X��7�Qc�Q����ƹQc�Q�߬�7s��+�?ʇW��!6|l�C\����G�{32��`YJ�ҩ��9z:��9M����x���u���{�I���:�Fw:��9y��� _��c���/���W��6�7�z��s��(Ĵ޿�-���)^��{;�6��g�z���h��˟�f߇W�9f���k�.X��D��&j߇��dw߀Zt����牢�x�EĔˀR��cÑ�{��K���p$��M8�3+�
����-��V��G�O]�ш�vR�LW&k�"/-��
�?ozcs��[�6�5�+�f�J!ٙ��7.|߂�⠬O��%�m�r=��h7ZJ~)Dlb�[��S�UV����w�[%�1�SXnN�;D��I���pj읤��F:���D1~�d�a�t���Z���p[�(o��(�O���a<�&�1{��5�05j���%�!>�F!�d��7.sKT፥&�]xp����
o0�"̟U�_�iD�	��`�Q�'�͕`bN#��k8�����a�!�8Sb����&�J�P�8�;�Я�RW����q���W�*�mE��o������ΐL�S_���\]8�ӓ�b)����Ҏf�@r���)ٙ1�6�'�>�;m���s��յ�/��R�f��[��
�j6����ul~����@�e�����`G�V������p�%q��i�Y~[1�V��q�b�}~�҄�n�H�:�ıd�̈�^�Y��	�st���a�z���������1����;���r4�P�(�����zZZNglN�jW����T�����;i�ou�L�f�m�p3�.^\�9�.�wX�<&8��|`�b��نW=�O.6�;s[�����\~��B%��=��jj��[ �W����x��Qwy{,�}����ɾI����w�i�����6F����7�P�8V����	��>�hR�7aY���2
T��˾�۠Ge>VE9�[����JNՠ�o�`צw��P�C��A5��]GZG��?�7ޤc��z�]�ޓi� �l��~7ob���Ɖ�I������x��v��$�#�2��1WhfoKR�S5�9D��҅�ƣ��iT!��7�Rl�m��{@�0B'�j��ϲU�(�O�-<hU����r�v��,?d�"�ɒ�Wz���V�����ÜF�~���E��xľ���/G�|F��đ�g�_�>n݀ٸd�aTm����ܳ��5 [Q�U���^�x3�F��Du�)��5���h	�4F�0�$����6+%�0��3�8�h�y���S�[��^?͛컸��I�������_��F8      �      x�����$9nF힧c3�_eʑ���*�ɒ�g�U�SI�*/9���Q3]��> $Ȅ_������Ї�� ����~xH}@;��������_����(G���t~1^�b�CP����g_�������`|����6P����o�ѣ�� ����d}���O���~�c���$T�����/�ǁ�������?��~��#D��*�A���~y�KM v4�"u��B_&����.��(�Q�(�qь���̬�;�C�h����QgPzH}��@�Q�����c�����{��{���3c���j�'��|�r P�Đ�f��f�/py��LU���̘IGaw<�2����jV�!��23b��>���̾zL�����+[�XO!�u4�Un�r��%�V�}����@����ͼL�bO��q����f(4R��zg�3)����D_�ج�����Zbc!�ԑ"Ň�n���jB�������R��C�|(׆����(3)X �M�EK*#��) �ėEK���)�>0-��-)?����<�r��eQ`�w�(�;��lZV�w}�$]��o<�;�C����������v�hRw
���E�Y�ֲ�Q`��}�P9X�ۗ"iRa���( ����x�cK
ý�<�g�M���1�}�)��1�qI�x�}yH��^�(�ep~�g���vS[�Pz��
�qh��/����ŋ�/Yn�J���d��# ���(}�������Q�Ӄ�WI��/y2����,m�x�X�/z�_F,�XOqkz6�eZ&!RF��K�� 6�Bt�xr�e�g)8R��RZ�S>E��rF1�#����~�b�K�,�|1��P���/Q,�����׺��D��Y��hXr����,3���5�$�f�,ýSf�l�}�<Y�ے�-��i�Q�ou�$E{�G���lRo<fb^��~<��Z)z3/������:;RCJ)Kʯ��;�����:�ڼ���ĥ�Se�}�)��U�}QL{�G�$F���8K�}�)`G��e���گ���ی�ӴoM���~�0F�
Yշ�1u���!ӵ����1��dQ��,��45��e���c�2�Π�|�r)��Ae�<W�V�(�\���U��D�E�gE�m�5�UcZ@P����O/���o
�퍭RjG!�����>����0�",�yz��d�z�,�e��E�&���s.��G�}Ӡ�p��y)�;��a�9WI�㘦�8d4b� Z)�7sB��3F̛�b�һ?{�/�}YX�d�w>S(ْ�b��z�w
�H�%��y�y���5S���v=�,��kl��0٦�_���g�T|^�fc��l�~�`iX%�N\
�68�Ee��Ɣ�߯�G�z�33b���X���n��|�߯�piy=�\�F���ٖ�*ep�vvZ��o�*�2fW׷��kG���c�'�36f)�������Y4e(%�X1�,�_�@�/��a[�`±�\���9bo��9f&���)|~�R�Z1ErP<�&�E���)�� G�����Ԝ#����@���*��bd�	�9B�;2A����f�`Ѓ�O��'kpcS�3���S��N݁AN�X�:=�<�K�e����ɑ�ޚ��3���!p�ݸM	)z�խ*
��s��J�S�)����1�ٰ��(jpr���^�&�����c��YQ��@�q� �j՘�����Y�[UQ����<���%䯫(J¡�)��/���)�r?]�Ԝ����AK9�ۭLq,�h#���)���*T�<�]R�T��������FJ���kBJ�s���l�V��2E�øݍی�Q�fD�3�L�(��w�֔�_q���FT7n�Q�1��vh��/�.b����h���V���s�ۚ�2�-�v�ƄS�R��θ��sD���)ǋ}{�s�Xr����ۆ����=þӷ)��'��Z�!,s2Ou�y9�gpkz-��Fcg��a��yj=�}H����Fz�W�VR�[U�k��]�ԝu���������M��#	���FŽ��	�<��t+����Ż���L)ܵ��/=�ۺ�pm*|��=Ȩ���3tm+|q��O�3�[�|���/��;ny�����(�� �ŭ*�&��2T�vEqj~��P��up�q��Y�__���U>���^[�s6���
wm2|r�횣���i=G®��������1/���F�)��v>A⎊���E��6�@rp��l�����!�n�"��űK���k
WE��n`4I��U���"8�=(OvzP�l�`�v抵W�8��b묖<��)i��S�Rж���^�#^3���R[/�������׃��� ��1��^�� �iD]V��B���l>l�-*i��AT޹i�zEY�n=i�yzE^%k:p�J�E8 "J�+���-Q�� +��,[v�\�V�U�U%�^�Dg��r�5%�^�Þ!x"�w�3���!Z�X��Zk��Bp�P� ;#��z��A ���[���A��ή���zA����B�Jj�"Ȏ�~�<S�+�s�jp��BkJj�"�znE��"�J�eP�h��i�࢒b⊅��(��-K�
�|�b>ax������/�jٱ�E!�k�``,�Z���|��I����W��=����;Ջ���E|�s���c0\�X%?ܳ��x����#�ٹ�U	�k���CqT�#XTP�v���^�dǡ���O��x��٪~B��<��7�Hglzx��R�rv�~դa�9/�T�캝U�^���aJ(V�z!xrZCڹM��+��z�Tٹp��+Ap�\�޹���+���
���,�^
����I��i(b/��rQ����������bA!�م���s���"��6���b/t^\#u�v=�|���>,Y��(���i�FU��Y��A8�h�v6�"����Z��z�����+�k{�K�N�:n�+�s;��K��%K�^���Xk~�c����s�6� ���f�z=`�M&OO8�dZ��^�y_)�v3ˆq���ϻ�<�֭~J���i��2�׃�xnݬ�6`O��U�$����.O�<O�8���!l-����5>9t(K�;3��q��a�7��6�)%�xO�;�V'��ޮWN%V]����ͤ�Ö�bb�������
߮��8Pw���a��k��QW��?�����u��ĊA�T�ښXI"q��֮�D8����6
��p�,H-�6S�
��p�,@�����z �֩��n�N[�p.��ǅTx����������JXz9xr�����2��8��I�v����r��y�m]��^�ib1�/YX�?��A�₝�y�[?��Apܮk�����^�#�r��1k�G{9xb���>��Ź�"��ע�&r���ò˲]'r}���˜^���?#��m����W Z���qf��z�A�riٸj����D�:�&!S�ӫ�hx�tgc$�^��;����՝�ˁs<*x4��P��^��{���Y��^��E}��;��ګ������ʪ�����ʇ�k��a��E���|��k#�=�Ȯc���Ό�^����~���rՁZ/�u��[7fZ/�a��f{�����|�n����٭��C\X���)G�n�hj�$��}��ń���������S�+Bp��ȷ�Xf��zE�ĕ�r{�'Q�8'.�)�^�A�(B()�z{��'Q�x�Z�ك��+B�L��U,p�A<�<�"8�=UU��M?���+Bp��T�nq[/�zL8R����Ap� ���������NV�[��R*�H��M���
)�^;��F�}BJ����M��}iS���c���r~�eQG�z��S����~-�(�AZ,(X��MT=hQq��m�7�.�{l��2��DycFJ���s�ה�>��Y�iW�?�3ù6'>9q�v��٘�ҵ;�������[9�r���]���k��tv�|Z�Y�k��oΎ����ڣ��ء���JzmR�� �  V:j-�bҪ� [�բ�i�� [���*)�prL%��kUI�M���!=���i�5%�6)>9x�V��>ό\{�s�)D`��][������u�Z9][�C�XU`�;%��9�vXnI��GGN\��|�6�ӵE�<y�V���������?����i~���?���øQ����
�g�~��k��[���-X$ϰ2n��<9p���bu�DJ������A�<�s�u�n��C'���g"?��ƍGN4�ת�7BN=�����4�A�'����{���x}�����y�@LTW3��:N�گ�M��V�H;�3#%AT�j�7�� !����a�(�喱��*z��I$"�
�O�L1�c�{�x��8�}��O���7�p�q��i��,85��k�ipϙ��@�́�H-'�?��i�Fz�v�?�${��|�w�	H��2��ޏѽ@������~�{��{      �   '  x���Mk�0���_�{�Ќ�}K�mshR(aJ.JV�k�X��4i~}���lS���0�y��D�#^py�?��n/�@qD�5�7J3J�O���D`�5��n���s*4`�ҨTI5ԯqLC�K�2LXg�(����c��qO�OD���`֡�@���-���=��9W4\0�V9[pu��9�����݉�%X��S
��*��}�_�G��b�h�p`��U�m���K�0RA�,���� ��g�R�]�c�7'��s&Q^Fx��KO~�����p�YP�l@�&���#��N7�2m9�R��.g���˰#��x�������J��σ�m<�α��@`��iW\�I�Un|G?$�l�sZst%�ʿ6�'�Na|O`a�m�dFZ�,�R�g8u�0$����t���?�y�Ii�4}U6����#E�7(�]�(��`�L��c�W��H[���ig|��Qy99ГaV�xR�����D�-�
��`uY:V���wO?~���9ݜ7T�����Wi���s����m�ݸc���/�|�      �      x�͝�r&9r�m�S�)��T /���Y��b�(B�����gWfU�S�[�,���iN���K������yC�����U>��?���?��ތ3o}����{\ȿ��ox��_ /◱�w�����񷷿���f�����������@��X@���ٷ �-1���t���/����I��Mb�h���y�FH�DB/�/07�k�e�vXI��mbt/��"8�$�s$�����7�nG�7�8!q�&.!��E���ϼ������a���/�;�?q�����X��}����Cc!���+���A���ˣ�DF�YXH����}1��-ֲǎQ"��S(AQ0K4q[3,����nG���2y�x�0�u����J+�0�v�|�_-��a�h�C�u�$� �p������}���������������o���uEX�X@) iԳ1�x	��
h�CP���sB����W����L@�Z�� b�'�/A���8��]1,�X�W�<t������1�k��D���
a3�BH	��uT��T2D'�nmDE�B#�|�5b� ���.C�f��s��&GD\d@8�n�h*��eĒ5���`!�h��ĔQ�G�f�+�Mی��c\���qqg��>��
�U!�0��3qq/�Cx���!�{%ƻtP��3�q/�@���Rr�rdxēƬ��ep!o0T�;�����.'ԉ1`�S�q�*���q!���B��Ue0�$~�(ԅ�Ze�"�b\X��د#�B29"���q�|0�B�Q�`��ʠ"�9�P!$L�ed�I>�E&��BH�3��&��թ�q���(E�_��7!e"�����q��Cg�Yf0�,.B�Ֆ���C}���@���Z�9c�e�^~/a,F!�� d���Zd��mu�5�ʄ载��F��_TcD�p�U¡Ȕ2�&����\����9gDX�����=���E�D���q�L��!0&V�t�J�\ð����v\�k���:�43��y�J�c�H/`�cxي#��59#zY �JW{�����rH�9�l��;,�����TFtP�R���p�^�����Lc�G�G��N���D&jWcd��j�����"F�wt\���ą��!S�HYxcL=�$�wWЦ*b(�
!u�2* �e6U=;K`�_���|�H�cS�Ҭm���u�d�<�0G:G����{�VQ��D����KEF 5/!��[
==�P�Tc����,d꙲�P��c�i��� ��%��s=���b*1z��-=C��-��P�Lb��AZ��n/GZG�)�z"���z�9[GWp�ce�ec_�.hb}!ӡ�#���4F6�R�йcKۗ'!t�a��#9�km\�]
�����E�xG{<VB�(�q(�O��Hwd����Z����OeƂ�
��Ƚ�R�I����!�e����:�?~�Ix��_��Z��B���ւ5�X�k�F�9�u҄�Է����P5�xM��FoSHqaA����o�(�?W���.'��d���%J=]s��m�;[�sB�e�3ogg+�X�8���5d),��RDPV�;�����Vx���}L1�z���ʻ73*�*�5gV�ugL���=ַ/g��r�	�#���M�Ҽڊ�":�=�ȧ��)�b��V��6d*��sc�(���§r��&7�!��	3'!��&L�L�<��,�u�-nȤƽlX"wl�7kI��9S�q�j�^�!�t�8�wN�q!BEL���ʤ���w��?�82�B����b�Ynx���'\����;�g`+�Tb�ʚP�Y��{��pc�1z��eъX���C7�*#��^�31���TdQ�4�`㍾�qc�0�y"�ޓF<nL%F(!.�Q�K�Y7�2�730sǶ��S���(?E�zfor�̔�˪F<nh��\���҈���l�T�&��"\BDS?�5������Ʊ��i��.L�7a���o�܁��Yn��[�e�k�[�6C9E��~�%�r(�M)j|$��4r S]����a�?��uıbƧ�z�c[߈��¡R�u[�w�}��}SD�C
�Kp�����`R�uK �,����R�s����}�Wfz�f�� ��R��!��M쒹��o�����]�o�� ���v��`�Z���@*7�����}E}6�3�qj,����c׈ ��8���(�s}J��H�[�4g��#�y�5�H�]:@&;N=����:�#3@���x=2!6�ft����0��gș�cՅ��X���x=��;wg5;2�s�������x�q�`��t�Lsd)+����w��H�����5���-��O&�}�2 ��JJ9;Uʘ1 �5�d9`,BF�b�o��P�F���v^�䬄98�bN�j��rV�˜с�O��9s *b�6g�='�L�"$8�W��ے�)-��hv�J�#���c���9��'.�$ޭc�LʝSIS���U̹�s��g��d�����78���	$]7�,������2���]c���I�9���d���-c���iv�3�Y9���56�78������q�����퀹;�l�a����l�>S���g��B�ә��\+���=�kز��,3�5�t�a���7P�^Þ�G�G=�!CD�1f�R�����z��n6,�1�,�;0�k���"��p9�mXW�tF�6}�۰��i%���inÆ"��L��e�t�ac�Fº{�l8�)BD���O5ʐA �>�q����'��F�z��pe��n�1�W�^�W����k8�Y~�e��DG/���NΥ��8'�OA�)�{��+�!<Ƕ�P��1t��,��b�2�=��9�͛2d�Ǹ6H��������<�9�������s�P��rm�:�hbl."��6�	����=�vm>�����Ffc�k�%��@��ؘ��|I���#ֻ|�m�%��sA���\�v�G zQ��ӈD�ǹ$�N�71��-9�q��|`�ࠧ��8�s]�2��,��ٕ:�%�!���F�`��8W&�8%V9Mkt8�y��\�`�š��a���\�`�D	��Bs��8�)�!��S,o�Î�\�`��1rx��T,���8��$��l�TD��90���u�`Q�e�5vJ ���s��\�@1��f{���\�`����Z�&���h�BZEV� ���s�[�s�Ņ����41?W/�@�X�-�9]��vL��hx�)�x�`�C�����SN��~�	D�<
3U��d���k�w�$�h2N}B�9����L�֒4��>@���{i��;ɷ��M*@����y;r��@�ʏR�E+$7&�\Á&��t�w �A9�p�I�G!����ЙV�T{�w�	�~}��@H�GAI4l͠ن! ��wi�,?�B�>
��Y�2�uf��T{����w:�p@�>k!o��
�����Ƹ�n8� @l�`d�vl�N1�ꏾ1.�H��1�T�egQ�}cj���T~��d�F���l�l80���E9����70�a�O ���$����(��&��9�o`*?
j})��3F������q	��Tɡ(}{�姈�q�t���Tz��#6����f�z�":��sn?�70��'�Po%�9��*���3s�q�)~�\� ���z�S��S�i�āBF�C֡�?*1�n�+%]�2�c^��s�e\�WҢ���ow���L���?]P�5����8�sy��Y�iVId��8W7�(�.zF�^�m��8W7PF^Kj�`�CJj㹸�ƈa1ֲ�N��.�S�H}z��Pni���Tt��]�����{�D���	��a���E��S��WA%Q�@�l����l��l��n28UZ�ze����d����(�]D���ȩ�l�>�j�I9NeG9�bEܓꐡM�G@�gբi�M�6U����Y��C���(��i1D�1{(6�Z��d�A�n�u6Sփ��k��|�a3�a=t����ꐡ��5�·��A����2+i�نæ �
  �_����U`r�ᰩ�l7 dh��8�j�v�]l��8\�<۱z�9�s�}J�zt��0�Q��[4{�Tz��dP�����sǥ�������5b�칓
�B����f钹s'���K�ۤ��N�;6�)�Ū?Gw��QY��dCö͟;��)ђ <f�$�6F^"al�ǚ:u����!?i��7�8e9��崅nR�`E}[�CchN_�&�VLm�f-���ܤ���ȴh!��I���ܤ���Z5�A501�m�QZ�O��Z������1�U���������s#��]�L~��mֲmw��7B�?�7Їq�X���zV=�sV}�����z։bly��=�*�R�_kM����O�g��,��c9��S���1E���YR�QȰ�R�<�,�T{������~�b�T}t}�̓·�T��E����S<fL�G!��6�J�m�T|6� ���Ƃ���Y�V�{��3�G�R9nm�M����?z����z�`�ELՇH˗���эkȱ~#��CZ�d�z��ޓ.c�O�>�iQl���yg���J�R�%v��5Z>2`�I���ހ���d�<dR�H݇t�6�O\I�HL&����I|k�3��S顰ޟ�X�|����G�K2���/VZ��<�5Vɤ�C��8Q��fJ�>���d2�	Z��Ec����]X��(h��<pг��2���E~��"M�N&U�� t�99�A���^�)f�몊8'�A��b�ⴌ��>��!�e\O�����A�>�E.��YOA�Y��T�Ӛ%X��IgE	RRP�²�i�����TS�o�#�j2!�eT���VMı�J�B�%�c�{�G_�`t�;�����Q��7^���� ,���ۯ�?��a�>֯WY��9vS�J	��2��{�e70UŔ��{nT���*�Z����i7�TwYz���T{��?��m#��~S�QP'��>��a�@��5�雅��J�G!ゾ]w{�ߠT{�%Y�(�6�oP&>A�[���4�|�A����ЁL������e�t��(@�d����h��~���m��8W6���q*o��8�6�1��\�.9�o�+l�b���[՗�ڍse��c|��O�����ٮ+���ƹ��JZn]�n7�vL'Jd�?�n��q���Y��mIN!��-He�7?�����
����'�o88���*H&O���t������Q�>���� ������X���glC���آ��nȡS�\�@!�V/�n�@�D��Z�^S�@��ߓ=ѹ��B�.s�	�n}e����	kn��;&9��})o�=�;&ϲCk	2/�=ߺ�7�-]N�U����	�a�����Qy�Ѣ��ɬE���}+�q5*�^���ci�ө����Y�~�z�ޖ��'J�7>diF0�ڕܚ��'n��ph�>�4g-mP�H���Z�2����ĝS�̶	>8x��:_zG�V֭3��3�6ʵ�q=��?��_�F��͢�n%7j��%��X�`�\]z jU���K�RC�����N�4d5���
i�sL2������J;�C�ɂi[�1���x�=��y12��n����S�����x8�K�S��eߒ𱐩�C���{�J�J�N�E��)_�L%��ٔא�|�5d!��S�� "7�Qu���R���S�]ʡFȧ��S�ڷ��e���L%g����(�:t_V��]��>�3��Tyz�q�sVw��AK;R�,?��@;R�A�.�j�BY� HL����Xʲi�������롬C(_pӯ�-K�3�:6�j�d�̮�S�9�z�����y�H�3a)�Ղ�jA�9ς�,;��}&�����Ɖ��y�����;'��)�G���u£�Ay�?�7:�9 �<;=Z$����L0���;eA����p'��aq��YW�ߣҡ��_�o��#m�l>�jgm��\[��/Ť�R�p!��a�(9�I������~۔pa�J�w*d:��)�1�*C�tH�J��zs*>�o�K��\�5×9��f;A���Z���h�=ɸ`d*���w�9e���h��]nO���	8�~A��˸���ܹ����ņF�2��ȅup\���3�Pm~_2B�-�>\ǡ���h�2j��뗺����s�Lt��h���uP����E�k�Pi�bmh��O���r�>�cʉ�.��O�Zc��p�0�����"Z�c����i�VF��|�E ���y�3��k����P�`�ܮUD�X}�'򂁫����^!gs��1	�GF%j�
e����wH�g]��YW>}��=�h>3eKqG�F(�`�B��%�_3���=3|b���k�<���eF�Ƹ1ڌ��n ��l\�16�����K?BVR�5�fʕ�/C��U�s�5�C;#5�Pd��P����}vBa�>G�Jµ�1K��!ʞ-��Æ3�J�1�c����4�ƌ��>�ue���!�P���LG;�m 3�J����d��� ��C�A��!+Y��BV���5.�P�q3�DY�@�%���Cy^��0+��`��"8������B�Wr�5�f"9�4fx��|_�-P͞wP�9CEtB�����i~�e.k���%CEwBK���%��g%!�Ù'*�s(����#�?��~����2��      �      x��}ms7��g������[[3h�p+�%[���N�΋�T�����%�$�7�p~�m̐CRE� �$geǒ���4��~�!v�v�LL�|�{4��yy1:>�:��>��]c����c��Њ�pЦ�rG�j���������/_�����:;-��>=(�.L~R����D������'gG�b��������<d~�����zp1����޿���*�̼����������o޼~b�>�<��M�շ{߼�?��/p���?�w����P��O}��;���9���`P������;���P��-���V������or#�8�v��s���y��`�~���d��3F�Z�o-��_����ſ>�ޟ]�mC�����ue�ˋw���{��w��wo���������z�_=�s_[��?���џ_�.�/�L���}r�W��W__~s~����7� ]��YN��&�d:�JTF�g6 �rg��p�=�����__?�y��g{�����xV��d��&�[<ł�����s0��-���������y��>�>�PC�J`
��~L�H�ʞ�����G�g�9����������@<�޼zs�cd�,H?u���?�p?�����]��L�������ٗ���$F�U�7�����[tr:�4:�"Gxw�������ѻ��F��~��6*~;9�J�rÙ6 ���wJ?F0�J��Ƌ8~�2�jY:W���\[ռ�θ�2��YlyӡՐ���6j#�o+�]�Έo09y�0{���Ն3���B���~�v8����b��0�B��!��öC�4��"�H"��k;ॶT��&����]���������#�a���2/z���8�8;]~:!�:#�(Tq��������������Ǔ��N�Y���btuqv������3/�=}�}c��s%�J�{n�XW���bV>=]�Kj��"'�}��z��~�[/B�Rz�Z �yퟒ眾����F����}�\��{�[[YZ[����z�b������ݓ�?���1�Y���Z�4vnH�u�Xj�P6�"����_f;_��ؙ3
ƥh���j+��]��{��w�,�'�%��|�aǖ<?��r1v�_�|l"0��W1�/G�����{����?���W6�V�F�����×'��$Ӝu*���!7���	�I�����HL	�u�w�Ѿ���:����3lm�g��*�?��3::;�89��uΎ
`_<9�����蛳˓*�)w�C:����D:�),�Ts�}��ES�]ʉ���Rbax�j��O��}����Gm�TpY�0I/Ls���D���������ǫd��O	�H��)�I柭�g|�R>S���Vnk�O
��a��ݖ�r���Tj�|tF)�q�.TkN�$-�)��Y&�no|�T@{���W�A�}V`�g�l(AK��Y�K\�Hߴ��9�����b�//U��[������7����d0}y��'/�l5�j�������Qe������99>9�z����^�Ӈ���ؗ������+9 +ċ�����^�0x?:@�~�d�-��|��������ޫ��?._=}8T�VTo�!O�(o>y�G瘢z���k�y�I��\F�P�|� UE�*�*g8�UP��`���U��"�"��Ό9�K�-�_@tqw�n�{;��3���F�iٵ��iwPY������ع���΁�W`ɵD-�Y���կӿ���c�Y�,뽱�L��>�N���Wx�c����j���{N��7��{0��n�즊W���Zv�d���h/��T���A���P��Eɑb�,��U�-2�?�O���1a�9�_�t����	@��;�E	rx�$ }�B���@(��7�{���	3�-8v�~q��_z/��~$�7�B:�4��鰭{�/Miw���ۖ��>r���M)��B7���_�.� ���lt��9>���zݓ|��T9#�M��I>Z��5��EHQ��%sT;r��Y��d,*	�Z��"$	��)�*iu�Eڨ4��T���y��B!n�h�����鍣CA֩B�"��h DH�5d�D���z��������~]�R��c� OF�%B���4���P"z,g�A[��D��9/5郭��Pl����R�0��n��T�"db�Kd(}���Z������,����'�3L��%��i�wL��F��0�N�Ӈ�ME�ߨ����Ơy�������[-�ju�F�Y�>�I�i�
��n�4�H�uru:}��<`�S���|��Ϟ��:�������t�'����`܄<Lͣ7���5��psJ��E�.�Plx�=�������_��ۣ'?x`�Fa"���)L	�k��Q^g&Y�S�QW���Ӄ_�~=�]aHNy;�L)ԝ��R���n��q��!���]�����;F��Ca��P]��kK�J�QM�H��X�
����}��╃ڰd��:��� ɆhJm�k�Tea�h��?}���?��O!J�V5���O�V�*�9t�˵lZ�shՈ_(��߇�����ӈ���+f�C�J:���	`vF�8�8���.�2��P�`Ǳ}�(ZiB܍�]	�E�(�h0x;�/G���&�Z"�����2d��Nn(���>&7J5�.�_?�|xР��+�.��3�C�a�t�̈́�,�7�ů�?q����5b�%f���G|�͐�5��x���'�9��:;B�#@��V%����J�ov��#����L#$�~Dئ� � `W4S*��xST)���D��ڭ���KS
����+�s����u�TԖ����?Yj�׹U�:D}8��n�P	���	�I�h�1!"��.��8�T�H��`iO@����4�X������~ �ܶ����[�m:�E|���ak�g!�0�d�r����6���9MS��Ph�)�i-�UV96*G%� ��N1kP{�U��f�5u
�Ɨ��B�bK�6VS�"�Pu�\[M�R]|(�1{�𮡍�ԁ� �Z/�5u��N�_ؒS�Ӑ�K��B<�j�T�Ե�*��pkoJ�K��=�.I��]܁�aQμ�b�$uH�=��|�%u�u����	��}�Q2�:�"�][I��>­j�ߣ���]�/�N�2�� uHqp*|����{�8@�K�����!�D #/j#���{�9@�8@̌S�q�!���O��Vn2�T��M]�3�C��ݻJo&(kҢ|Mݙ��� uH1R��R�O�T���Y[
P�T�.Z1��,K�t����`H��!����KoEP����*�&2�>gC.����]!��8�� 9�=��e��0!7����X�Ϊm����MH��@U
!�U����7���L�ឰ�R��-��0n��.#�X
��ܰ�Eʽ�m�vY*ܰ�V��VTs�R���j�}/�)K�[xy�nYjB�FPY�K�R�]KZ�$P�)���������짃���դ�O�g�o��NIj�r��Ψz�^�GM��H��{����I�������j�����>p���G�ٷ����׻�1ۜB�cnrY����2�/�?�]����ܧ�(5��4��L2��U�#�C%n9����{���'���y�Q�:z�7�Z��:�U�ܐ:"?@Ag�V�,�A�B�
)jk*-�MȞ���@7`����!��喵�������c�)�L��GG�p\����]G��6�1]�Q���2��Q$�Ƴt
��)��6^�-i���twv�Ҽ]FmV�i�Q��󾣿����u�wS�`������n��{�񂕶s-�!�}UF�Dl�۹�Y�ZV>�n�C����B���}�eJu��ՎsZ�=ج��nE�M�����N��N��>�v�Z�-|��ne��k���`�*=�T�����lC��b�/�� %������]��Q̬�j�G���jU� �������I�����N_K��ɴTm�~�n��L�֔��T5��6���w�-Uۡ���QYo-UÜ�{B    ��T;����j;�r��X��ۿ�HKU	�R_i�9�gC^�H��Ԩ�7t�IY�:�\�pR6Pq��Җ��e��4�Ӻ�4��C��!W%)mE�t����oSC����"��,5�d���ʛ&��Qk:j����� em�ش����9=�K�B���w���V%���sO���P�:�| ���tWן�����l�sS;��Tn*�)�Lj��r��^�q�[��%g!�F>�mi�,��ʔ�:����{];��uv��Z)Ӿ|׸���K�B�� �t�q��tO�5}�]��K�;ě2IaUʦ��~>˽�N����ܔ�Y�۩6/+Q�X]�]�K�;\�
 �5�T�V[�Ÿ1���K
�]$評�6�t��ڸ�t�	ֲ{I�Y��q3�n�H&�-��f�)n��"�o�c����pS����$��;�b6�T�ֵǌ��;�.v������uն��2L� "�p������J{��$�@��^֖��6�\˄+#X�{+���x�a~Q#/*��9�%���J��v�����@����(�X��|��[�xbQm���R���鋺���.@�V�i��b��X)�s��{�d�aRh6s�g�>�T�M�nB~�]@�Jg9E:=1^��U�U7�����d��HjM�Su������AH "��ne��R�	�G�{�С��k,(��p����$�w�"t(&5X����%�P��5&[5*#:�Q5UL�U��P8�[(��H9Q�����o�<fo���&�D�����+�\nKr6o
���C;i��YhT��|J���..�I����Rj�D4-�i���?����j֕.����_�[����=�O�l�����!ӥ��x��m m���խ"��!l�v[mP�0�/S{u'sUwX��xo4��v�Gsyi,��oGK$\{ۚ��m�H[C��S[��0���P4$z�֠/7�����j��Bl����G#Y�7,p.��l��f�4y]�,!��q��2��o�⎍�W#!���������㱡����mUJD������L�W���T���C�oU7����NM����T$����Ԅ��,��v��z x+�դ�LY����y]��B��閵\$bwK7��!eKA9�w�P-�/7W3��+Ud�8"(��s#D�ņ����R�6�N�)�
��e
ڎ�V���G�{�8�]�˄�&K���F���!�j����L�o5����r��5�3z�	��#�ojN�V�9��a�n~?0���`�P��$�hmx%v��}?;�a�9���r?d��v B�ҹ;�CV��cV�c�R�ɕ�!����U!$�1^���!����Vy2:�����ʆ���~�����p<%7DRj��8ç�e-�fn��yCDř8��m�En��GCD�	0M��I{s?d[�!��⌇����o��v��CF��B!��������A�i8첁�}�g���+�^k�%g��_�LEhB����������F@��8��+��5��C�O@g�w��}f�;찆�k�B4/nf����"�"��M���pz찎��<!����SvXǈ	I��v,�ëb�u� L,�	���zX�I9dlH%5P��M�Ld������\��� ��
j��L��'��z�
U	��Ч�4���V5��BlA���v�h�/7�����q���؍o塏YM#�$���ĚF����Z7���㡽�,��Ѵt^۞��Q8(�P�x�H��pZ۞��8:,ۆ��u�0*��lV_�#=M=�!�*� o�|˚z�������CU��Hޒ�U/���31F��xʻ�N��7�g�k�Գ1∐�܆����z\�sS���]�m��Z����}o��J�Q�3}����`�ފĮҥT��z"��[G�[qC���ϝ����{�Q警g�����{�"pX�T�r�L߯�����PA4��M���[��
)M��Ι��/���BP���4e�~��{2o�3�f��z�&f�~��{���%(.̊���l��>Syrpkѧ�3{��=�o�d���s�D��uͬ�}m;�C�]�hA(;���Vf���.�L���yɭ`�XFf�7����)p!�������mc��9䐑s�,�O��f=w�ݸPm�8��+��t,Z)S\��|>0Ė�n-	ʄ�=��Y�%��vK&����<��Ƚp�|љ����!��DP�[v�B��{�|.BQCF%��ȶ��-��y��"�)�JD�o��|��������
��^���;��r\�����Y��%�=I G�J�4k�e��7���!/���)���t����!G�Kɀ��I��O���� sЫR�yg�7�f�~�=�t�Ã�Z!A�"��+��!��(�֮�L��}!���!��?F������!$b!A���(�H5�	��!/�<����7�5��L�C�S9%WVٙׯg�	|�PR��)�p��?�3��>D�#a�$&ӽAy�	|�06�rvn}]D&��!�#ِ�R[T^����"$�bI:(,5����"$�$2]J�l03�	��|R`z
�������"$�ܘ$��Up�n�d%�y&%���|���|2<,�r���g~����v � J�)^���%�Õ��4��]RuBGV��e���C�iPʼ�e����0|(U�Y������a!��&S4�G懯���\���
��v�h\k�]��\J{��k�E��,C;[7��Zi��տ� �&��2� ���9s8I�SC�fy&�
�5��Y�V��J��w��䙷��۵9�ƺkc:�PB�d�\�u�8/D����
1�Y;Dp��̱ݔc�nC��!���0h�mT�O�<[���	)Ⱥ6'�T�B��5������|e�����C��!��1��P5z�gR��	��a ]�fFJj�y&ݮM��9�&�cXh�ݑ�|e��9΋g�k��3nX]r����B�`Ok��I��I,/�t
Jtg�є�����m�)�L!��l(���)W_i�0-tv&�栠!�������
3@giU"J�����jM&}dv*	�Ff���*���t[;8׈����ɻ�6U���9�i��qY�r�զ
�Es�4�w�@�x,��T��Q�����B���%7�7Uؚp�%��a��U�+8U؞pƖ%Hn<�6�!�Qq��)�.�U���x���*�{�C��/X��-oBy"l�������H�m�0�[]C�������*�"[Q�Ò��U� i�d��՟�:��t ��3��<��M)��B�<}��`X!:�S�i�
j�|^�KCgV*�
���%��aI茬0�6D>�x��A;d�]��E�|.�4,bh�Ю����s����E�3�|>>D�*+������A#"FV���FN��႑K�Ҹ!��Y��.���p�`���K�����S.�>W*\0�kt�K:��lN�,\�#\�C��Fw�/E�ȸ'���`��r�1����b�K���S.�H�))�e�r����3�.�P�u�ra	�)-�)�����\XSe;�f�EG�2��Tݚ������Y	�V�'3U�g�l���*��6��������ZU�\S�ȁc��#,+��ݪJJ2�}��#,(k�k����D��S�6,y��P(mu�rd��V��AgdSR�������v��ch*Q	9.��03�Kc�kDgv^Ja�g��nn��b��b�3�j��p/��,�!����G��m�y��p��5FJ�2�}w7}���)2�̟@��n�"e���J�:3��`��T��G���:0E�{ՆkM!��(��v+a�L�`a�)Ԑ*3���,+��j��#Q�>R���I��rRE��t&��A�D�'Ǫ�<��a�)��ћe߲��JM����h7mCkmW���΃�a�I֧�ŵl�f7��Jꊇţ0խI�r��a�V�}�����|0��{��;�I��K�9=}����{�ST�!�Rd~��|�a��6ީ0��    Z�/�O�ٶ�==hu�4��[�%��d�z*am�.��%W�*4�k�Sݚ����t�ıRJP��>�juE�%�3<H5%�SԬ>:���3+�V�_R�y����c}�������1���AX3��)��A�U�wV�@XD:��Jlæ�{�SAXG:��R
%a&ϝ)uo7�դ�?%$ �f9Պz=",.��0��d�V4{V�/����,:eU�M�֤��T���"��^��)��>��T�hKm�6i�|V�S���D�*!��f-�T��DXr��陔�jYd���*����DM��ֱe��D�KL4C
C ��s�"�DXS:#CI>md��{ �DX=��ӳ��r��
�LT-���a��̮�hW
��Mf���TɰVtFw׮X��f�ꮘ*V����tL��T����a�I  ���g�w�L��*�)9��#�~���L�M�*٩3�[�C�>��R�%3U�SZ7�&Pro�23U�`�d��6��٨�h�u&�nMTI�3՛ۢ�LT-���6byC%�&��v�'��u͊��V�js(���1Q�<bd()j��"U�#���v��	��Z"Q�"bvwٵiO�g�j�Dʈѕ3�M~����"�#����Y��2Qu�D�t�ρ�%UwITa��Dw'�ۥ���Uة3�]�&,@&��MTa����m
�t7S$����T���]Q�<x4�v��7��I�~]�W�������>(o���5�t��͐���9�ebG�[�s���	���r0���g�6�'�R=s?<���Y�SEh��#���	��pĮ�Ʋ��G���R�.��(�۶�x���]TR���C�7\�����{���g���oE�ҭ�坄t�o�֥��VI����
齄J��즄�f! ��	9\Ν�s�q��]��y��讠se�`̬p�V�s�9]�!�9�qk�}zZ�=����-KGu@���еu@Z���WTc��ĩ������C��'�a�ֿv�Aˮ�%/�xV���{ �uA}x˼K��5���C���.�jR�ۦ�t�Px�A�U׺R��vl��i �6�I{wb�O{��a�G����c�R�9*���9/a&kز�2YCmcV��Ee26)ְW}7���*U)y���Jۮ�]ך�{��NV|�f_Ar79�a]�K2�2L�)w29H�PC7�n5hcK.o2�`ڕ�����\��"��yoՌ���J����+��{�B��\�B܈���7�Hh�HE!.WNLٵ1g����� ���1��r×�ۦ�^�����1���Mr$S�⇭�B1:42%��i�8���=�9�t�*�4Q}�q�e��2�v�N�7Ч	mΤ�D�U�m,���-����Te���mV�j�v%��8VۂTvïc�B�*�i]�
]�ϛ�)I+���Z݊��a%���;,�
�� �Ȯ�|�FI���!+=��kQ�%�r�[2�����Ϫ��\��$yAeS�q_r�ݷ��rZ�<|s�9����x�"���g?|���������I�b�D��έ����F�|{W��� q�L��:]��H;�aE��Х�I�i��qf�1�㏟���8;=9�t�S��2�y��<�o���Ϟ	M`B)��Q���b࿻Zv�t&;�^<��������/~������{���[��2������K��
���"R�Y�����0��645:o5Vj�����F쬹�">������V>ݓ>�mK��N� m�{�-�M_�M'����"�����]�xhW:���r���n�6�yu-��)>x��x�aJcnP|H��(�U�;�7�L�U��x'@OO<A�wY܂�_�'.[K��p�8I�<{2-q1��k�y9QZ��%�FU]S����m�tO{�m�e��%ÖY��W���Cin���=�z,��h���T��N��qюЩ-@�n��z/n��d!�kv������`r�Ą�6T��J�&=�\��ˡ�GB�6�w�i��i��S��n�֩�u���-���̮D��*���:}�В{���L���B���rz+S1�Z���<�/����9�Uf�Ǆ�woa��<	�tzv5���쏣��?������E���vo=ҁ��W�>���]��V�����J�^�b�J����W��8y��~���h=>!�%McD{����/oşK.[ �Pp�&1ܿ\��?_�>�9a��4�����O�S2Bq��8]��.K�1�4��F�Y�`�l�d�[G@Y5���i}փQ.n�\T
���V��==y�۟W��)O�����b���їb����.��8*�W�g�������rr����U�����ٗ���9���$�As	%	W��f(�]��#�뒄�Q�,����LG�������Fb�*j�in<��È�J߹�T�s���bV���R]q<�Auq �v0�9i��`�ԅjZLל�����%�e�l��Ъ�j��r��m�m��r��4|�*�6���W�h�]�͂�W�m�?y���G�����˫B(V��U�\�<��D�T�N��Q���^�"T ����)|Ih_�I�so�U;B�=�g.��\��\��~��yz��='[�������ryC[IT�v�Lо�Q����g�n�$��CO���A�6��� �ҭ�% �g������}����hp�i���b�c6b��E���{�b��N� dS!���1�nK���Ү����<%�}6Vߞ��{>:�<�Ϩp���/Ə_T�����.�s������O����yE�e��X�A�G��Ey�\	2��K`-
���Z���Q��!�OLVyQL��R	�n���>QH��(d���� �8��Ch -���P��3GY�fڕ2F�>9���������oJ�Yn�
�,��D�ጔ��d�h�X�i0?��Y�֗���?��~K�@�5�ҫ���z�3�5Q�VfVI8����^�S�b�\���͓������Xc�
j����!��m�������o��Q}�p �m�AǉiFq�
�y���%���؅{����8�w�|�u�R�~tY���?F�~qH�y�c����ox߹K߹;��W�5:-t���T�>�����oǣ㓣�+��7���{G(C1�䱿؅���@3���x|��'��M�O��[ �al�0R�q���a8f�u�]�i�2���sÏ������8M�m��gX�t�[C,*sR��ɺ�L�
���L]E7�K�'�[�I�-�O�1.v[�wO���#w�#�J�-�T��	ǋr]��."?�?9; ��gd�v���?��bo:�L�݃��X@�����<<��0Na�~��S��P��z�����#��L5��c��a�����W��ż��b��_�^do�/ݭ��̩�ߟ?8�8;�|t�:�?����us�
�-�ݭV�����*�2UFe��D�������K�껇{��_6����g�k�z�j�~oЫ�	*��<t���p[T��F�ոH=9�8���b9�a������U�� �PX�&�r�L��w��*�)�䉇&�Ь$xt�V��W�Oj���8�zGR���g����S�ӇKfp�<�v�Z]Z���O={��o��_��m+�-�)�b���)r�����CJ��],��}g���<E ":�j)(���+�|�ÎA}��S*�/N��JÝ�hl���{�*��Hh�r��cq�������~� H����E��=sឹ9���`�-X�%�����,�1l�a��d����߇����a��O^+4�֩���%�.��](��'o�zM�@WBN��I7fxM�>~��*����^���;��]��$�Ql�`�A�J�gcw_T�b���^��`�����3�g{����
���R1�'`�	C���R���s�Ć���Lkʧ�w1)��+C�X-��:
��"�m����-.��ژ.�&���Vz$lMU�_f�։�M��������E[����	�s�ԟ:��y]�E�I�Ϣmi�+:����^>���Bo)-H�#��[���oA�j�[�\�&XBܬR[l�9և_/A�߃��;�R��T a
  �b�����@��= ݞؔ2���_�,&gf6a6{�q�!���������5qc~/e��m)3�Y,䶽���*SfSf��=`.a�B�h��ۋ`�b�?�S�~��o�L�e,��1zK��*O{��b��)閱o;%-ct�WR����)i�W�nLz������Z�,i�c4�B9�7w2�&���ő\�8�y��_m�PK�'�U�EQ����܉p�D�?�*u���Y^v���K��a�\T?��DL����E�e}��]<�1�qF �����<8w0��m�1N�ʬt��OnߺNv`^�4 �	:y�w�qzt,i�&�8��~	���6͔�:���LS��k��o{�A���ƐGA�G�\1לO��M&smo�����i0i�f4�4V��� Z�FJ4ج��ެ%�4T��7D���3�n|S�!���4�%|s$(<��-�myi�M��Y(�]gF2a�4nK��\����,�f���i��JII�wǖ��d6�&E�^��-�@r��N�U��d6�ع��;��V�Y�6�%� �%\R��eQ|#&b�5(KC�'̯�\1�2DZإQ�&A��k��F�Ӿ���Q-6����x��C��R�m�nn�_�	��b�g�zj�� jױ��m�BW?����2rJ�9(�6�<�s`J���J��=iyl3����"j�Qy,ρu������2ʟ#ʃ`��.#�Y@�Tk�(3��4�y5p�`ʛXʃ`��7��è=8��6aL�8��N'S�A���2
�T�z)g[�A0�q ��# ρ�����,����z�<���`:����)<(��� ؍0:��@	�����(`��.au�`:�g�}���<v_�`&FS�S~)�5��6l��y�&ρm���S'Bp�($9�4��·�vgU���V�s`3�ν����3q�ET:|��|+��0���/(��(Ɍ�-qe�JS�_��ڹ�/�q�5���x��ę���a>O��L�O��g]�/[T�<��js��̧Ҿ�ļ|��{3�����L���t(���V�C��.�:��B������3,OPǩ�8��7q���_�\�
���p�䂊�P.hl�+ [c�\�o�ZP�ҬB-�*P�G.�U[-hY+IX�b2\>��E��Nh�b�` �ł���*7*h�_�'u� e��k#�k9��"@G,h!�]�|��kS%w�E]�2�`�e-��"��8� e$�_'x$:g_��|���'�m�m�/�;�6�!xv(�*3�m?cm�Ti�tO�#m�s*m��iQ<m�U���]J`�Uĺ\�Ti��ީ���F�&è#m�:Ĉ���XF'qH�6��Fz��W��G
4�6vSe�I��u��B�oJ��mR`3�mn1�)�f`*��s��͆����d`ж�J�R@T/W)l����R�F�+Ӎp��
�E l�)��*�Ӛ��z���8b�<ԵQe-ɛ]��[;ֵ�͖�QJ����ڶ�����dm��ʛ�+uI/7x�������\~Ǣ�6=��9�-�!�i�nߌ��޻Fs,j�	i��<6��i�2��N��kڐ�Ԥ
��mZjܒHT�&\�2M[ԉ�i*����YH�HS�/��C)��1莘u���Fz*i�#�	%m�:d��`\"H�Z��Z��^�u��1m��JІ�C��!=%��䉠�o��M��s-�l<==�Pφ,$]ܮ^����Y�L!W g�����Y"�ِ��r�[Ѷ� ��8QA	k�f��٦<�5�l�C:aH�7�ޘ��[�����٨�0KU��\喌�x�S܀*�Z0�ej	ȣ�C,����͙�Q뮏B.��j.Zúi-S����˸ÀV�+^�ۦ��B
9��Ў�	nS[�DjeW^ Wq�P��gl�6�֝+W�!�q��VB���ԶFr���5��gRX����3�6�խ�3�uj	��XH�lX&�Om#Ugq�ŀ��Yv���l�C�q*�٪��!�ث��S����8�����M	.��2� �)�&�x�W
B��0��Jrc�m�V���g�#�xI�!Α�t�s+�xI�!N�X*�L�`Jo޶�!N�X`�� o;��"βP������"��X*�i�d�m�bP�����,��Vɠ�33V�ҢT6�%������[ꔊfB��,͠�5X�XXl�f�|��fhE���/�MP2H�Kd�d�+��!�N��J2X�Ŝf�%���� J�0Y�`1_����Aѡ�j�P�Y҆J���K3(;tLmW���n�5��[�L͠�25���o�@��r5����A�ac*�,k�|)i��K�n�fPvؖHn��D������zie�i�t{h:i��S�� �q&�J���C��A������fPƙ�Rx^��,�*��e�$���")�`��*e�2�b�{<�r�e�|>E�n�A�)\ϖ��te�0����A��$+�Zo�Ź�n���M!^� ��BZic��A��wKT�#Yi�:IȦ��s)u� �h���h�"9�`��T��A��0���Iޚ[�����1Ʊ��2<l��$���b��!���ެSZ�A�;=��f�ʿ��o�øJ2      �      x���ͮ�8n�ק��6�,-�?��o7A'�`��`d5w���ȵ���sږT�ծg���S����DJ��?��K��?�#~ �GJ�~���/�j�"��~������> �c����C �Z=�^1���,��!|�!?�z��K J!=xH�����T=#�I�H�!��!��z���"��b���ȫ�$��D!k,���_���c��C8}��!_)�\�hp��#XW�W��(!�|����B6z�q��/�!S�r����%���`�G�����R%�_���������O6s�o����_����_������_�~�� �C��X���fk	�S*rL���;B?}��w�Ø�+P���1G�s����Qg���F�����3��!8��#u;�0u��� 		�(_���|���� [LLK��a���7�>:�8 ��� =G����e��4F�t�aC�Y��F�]b��Ep�͐R�n���XC�+r(�JЧС[��*"q�쏌N��(A)e�<a?1���90���*�,_�!_�[�!G�xY6f�J=i�a�U �r�Sn`�#�_ER���1�\s�[�p����c�r s���9W��9nTԲ�$+J�S��\;F�:��C1k�,`���j}c0h����j���>J*d�+`����Ov8E-��<m+sjY�H�ZF���,����Q|G=ќ�t���E��0��0e�u�����@˗��|9Q����CQ�-A�9�h�i,z]�9n)@ThL�c)�3l1,�G��ސ�w0|m���H
�)��9H�[��!FG�ü���R�� |E== i�l ��������FGM΍C�͖^�.�\�(����Y��mn��k5�d*����ء�\�/�c(��^��)��Q����>=庚�ZF�)���� �橖Q`�$��4Ӕ�:�j�=�X
��<�2j,!Sfx�Q��H�M�IWI��N�!q��-w\%md4��.��WI!b�����rʁj�H��b�L Q�lڭ9�o�ţ��A!�pH��d"fa��pc��p��sL�n��R��ba8;�^����Q�i_�-f��s�O��'����n65�>o?-��u�rj95�?)!��t����8
�������BN�w�K5��#��A�����#I`�H]�;gAX���$��[���E�]A����Z�&������
�R��
���C��x�h�[�����x,�G!��;$�PcxE�H�~{tH��U�e��@��@��A�	m1|A0i{Ap$��ӵ@��.��X�`�x�7"*��#*\V�f,x��Qq�����ңX�X��FG啊�%�����鱆�ZI�=��)w{}�0��'	��Q���u�/��Z`L%���[}���0�-O`���-�V_j%5�)ǳJ��^_j!�dŢQ5��^p�����ݍ8a�d�ٗZH�4��%7��H�/���y,7b��f_j5��o����@�-�S�������Q�<�D�����cu#��7����3���f�$e��7�^7BZ|AN!*w�&\�0]+iq�-��&�c��,b!zw�с�*��)'���J���۲�[Y����c=�\c�ԏ L�E��>'o��ӶF�'�����]��<�M�z�5Ǵ��_}�!�ab��Db���� �e�0��a9㨥���«&u��|b��<E�)^��hղO���d˪Sj~��i$č��[�P�؝GvD�7z*/JQS�U�8L��IB���A���
=�$d��⡘��{__r=�؈j�-k5���j��� I;�c����Tt��(j��s�"ҝ3�pl5O�X����P���f_��������z�YP�Ҍ�G�U�5�r�e%���^Ȼ �5,�GA�� �.��9��^�}!�t���ˀqD�bx�s��t�I$�b�|�d�� ��bdd�� �C�ַ�gȻ y�W�H�����;|�pOZ5P, �'�e2�=q5����~���ឺj`KA���
oO|7�*^ma	�����=ڨ�R�.J�=ڈ�LZ�>�hߣ��NU�����{���DH�����{�׉�PT[<��h#�3��e���Gm��Xʞ��6#�6�:�h�����FhN���G��*���ys��x_\-^������k���|�W��}:m�����l�i��'��/����wAl����m��>G6c�ݰ=�]�r=�c{��I2������e$�+�H~�����B�h���.Ha"jNߡ �����d���������2�-�K�����u��c{iO]9D����𽴖W�3�Rh�$_ޞh��qH�A/��g�G9r�!/�`:R���z#HeD���t�F �tDR9M�Fw8��{!�c����>�Ģ���$)j3z�$]�=� f������l�4|��	�i;�Ȟ���1iG }+�=q�N?V��e�	dO]sH���ڍ@`�L�ǚz�pPL1^�a|�v�7�i��lt݁oߺ��R�pL_�4�uG��J��m���P���u���uO�2��>��n�zs��y��<�۹�z���E��٬��� ��:{@t�&�ҟ��XM��UL�׾>kn�^�V���Rǎ�J�׬� O-�`��go>�5��7�7#Zxt����u���L���^�9�����_�{@�I>�SA�X���6�V�7��"gn.r��u���L�8A����ͺ���k�v<R���Vo	^���d\�[�A��N��^���FZū|�J�X%��7�W��+�ܱ��$K7�:��f�:���V���w)����:�P��Z^q:R���c%���i�����i�9���W琐3C��a|Z��������0>���	�@lbҒ��Ƈ�VW�
Zv���Ƈ�W�����dU)�ZZ�F>�������� �u���4C��FZ�Ӫ���*Ÿ#��6��u=ZU�qG]9�❔�4x��a�啣��e��^�h|ky5���^����ƇP�+�7�p�����ƇP��sؗ�����ƇP��� Hϖ�"���$�����P�Z]�Oj��P߃Z[�C�F���= ��rdm����A��%=o��{�QV�
KZ�	����F[���1>��!�+����VO�޺3k�@ϛ2��C�n�޺1�}g���cn8���}Y��s
F����Moݕ�Ӂ�1��6W_��[7e�6NeY�����,A�3J~��9�P�[7d9�|1���ֱ�Coݎ5s��\����1�g��X���[b�<o$Ǻk��bN�<4h��Q-��Д���;�n�Ւ:���"���=;̎6��|�S��}�B��Q-�~�9L5��7̎jU�AJ�X@��uTk*Mw����eV�͎jMu����'�G�jM�9J9���vT���HH�DZ��P��ZVi�=M$6���ײJ�}&5=�/�\����j��؞�E����D�QH��3��U�.s+��6Z�FX��{P��F+G���F[y��t���:L�kq��8��5��U���:�M*g�q�@��q-�sue��R2��R��sQ ��en�^��u.��\��91c5����,��J��c5����U��eW�jm��&�C��>��Z�spH�5K{Ǝ�ZW��^ͥ]�2t��uU�/-Z@->��U��~�IiCǪ����P��DՇ5s�M�G��ªk1�U���Az�k&ɡ���І�U�b�"3�f���|��Ú@��_%n����>�	�)x�S;z
"; l�G�ޒ�PȎ�Z����Bv��oa��Sn|'��u��o2x��F^����s�n_���T��{as��4��QW���b�SQ;5��/S�+L��,T:�f��ejqu	 ��\�~�Z\g�l �{ϣC�\k+��{U4?yF�ZZ�X���w"�\��X�U����Hr��2\�\���ZV��&o���'�R˪�� ��W���Բ:�*�쁠Xv��$$M��* I  �V@Rv��Ë�<[�Yv���YE��~(�= ��y#P�o�谽R�+Mw^iR�87�ƙ�Xju5�d��(hs����)��:���x�]�CL��W�޵�r�G�B���@|=�Pj/-�t�FZ˫�X( ��k���Q������T�(����ZY�LK�%G�Z{f���귞��N�_��#8ҍ���%�؜5��QO��m-ޘ�,�mF%��b���FZ������]��ZY��V�]=�b-�^�j�/��'�=���:�� lZ��4�ZY�#YP�]�>0ۣXk�\e�1��7�=���I����ɂ���:�A`��?F�{keu�=�e���P���Al�X�d\D��U�I)���Ff{w��O��Ħ�:14�#ؑVw�D��c�	v����l�ʓ�����<uN��FO�BP������e���Z[B����|��@-���"x�;�E�a{Pk��` Ә��������ρsNM��zP���X҉Q�%�Cmjmu�l��͙~�� �ZYD���r�օ�ZXm��9�b���FY�tH�ꍥ�.�����"��{S��nĵ��Gб�z��֝X���w�I��������)$�����[�b�AJ�B�����u+���W{9����z�`��j��X�[wc}�X��j|�n�7�����P�[7c�A��F=ٿ@�f�7���5�CA�I^@�ق�G�$#�Hk���36�mm�5y�"��~��h�����>;�X�{��Z^q:\I�b;,�A@리K(Pʳodݔ� ŏ$�t�ΖI������8�N�9�~�����r�"������ehB<��>"f���{�f�7���מ!��V���s����/�f�u?��a� ����v����~\�, ���g��=?T�F p�5{ �^�lȚId2`���&�/��y'�"I^@��������ɲ'k&A_�Ҝz.��z'Gi���Ͳ)k"�H4X$�Ӭ�ڎ>}'�%���S�8��wr$&�RL�mY3��fsJNo���������`����i�C��A�j�)H+�:n��#G|����ʚ80M*_��'��{; ��^�[��M�<��8��4e��+�㝛�z&�Z\ŏ~��H|Z�q:i:8$�s���蘼���Ǒ��9op�U��#�g;%�}��u�����O"���USz" �q��67$^�>HQ��~[��g eDc�r�" �+�/�-�o����<��ʪD?p��!HG8���U]���z@��U������p%|��s%<���?���d_\5��+�I����UKn�i= �ڪ��ߨn]���Z��q�i��,��5��_��9q~��r��~hn�Џ�L�D�T ^f����A���n��9p�E�����>�u�⏾�J����%�/ߵ=R<N(YN��@~��r�����S�~�]ޝ�.}��E`I�����ֲ�# ��_l���-:���x�頶X~o>�H$ػ��M�7���c\�fd+ȵ��0h�ӅGb���z��A�3Y�#B��a���Ś9�c .�m�� �R~$���G��]�
������k�~��������?��]���I���}�����1�      �      x������:n@�_?��O���#	/SS�l�E��Ye�g �{,��EZ�5u���>-�< I�Ɵ�������O��#�����~�/��G���"��?��������_Z�/���C�Ϧ�#�S���g��F%����g��C���E@�ϖ��7�l><?�څ��P��_<����/���Ayx�Ԛ3��g��}�?������������������A�ҫ�KKº�r%�$�#�"�/ Y/�-�xI9� �^N�e/G;��Hf���"\Y2�� ��0=X�KN\��e�R_@@	>0-5� �-Xt�mvXu�̚��uႣ���-9+��/\����Ȣᒁsӆ۱���K:���J>\4��r�b8\ˇץï�t`uA~��.�F|]m <@��e���k�5�X�'.��e���4� SFY��5"B`=�!�������RC5C�KE������Q�G�iʗ��5,2Z��,T���e��Y� KWH;���_Z�ʉ?
�-�`I�l׽�>Dmax;~��XL�Ԣ$�z�����2��J��Yi7(O�0���C1��8R�,,6+H�y�f�@8Nzg`�9h��(��~8Q(�l0g��LWK��7%�T�z��ް)i�$3)N�FYQ�{0����1�(��5A�
�8�wGq����0a��ۈs��(��'��$��^���0�2솯IT���Il�ϒ��!Gi��5�t}����Y�賡Fa�7�?YIT�n+Nâ7Ȇ�E������(�i�I
����[�DqXBea�mNt���R��U��寔<����?��{8
[�%�L��׽>���"�|��e�F/gq��%"�&��cI�"Z���U~�-��!Y;S������a�+�X���t�����ז��d�<�鸲���X�΄�;TN���WH9}��Fn������s�QXc��}�����iXc����(11eރEu {��"�x�Yj2�=�:pͥ��F��cJ��@�L��Kخ������"��#��z�O�¢8�)�����g`Q�*��	X���uÑ��u�X���@��K-��l0��h����2O�갂K���m�����16�j�Q,>[`A�]uL�s�X`ъ�JlD�v�F���J�gM���Ńsf���iX��3LM��qe��UGu�%�"^ފ5E������6� #�F�h�\����1岟��z�R��Z�!r��W�cf�Z�З�.oC�,���R8�І9��U_�Ȼ�c�K��Ql�nk���ڲ�9��۸�kt���%���x����*'L%�kS_��a,(6�P�_K�|[�x#�~3�6>����h�fb���R��0mı��R���\k̑=:�=Y�\Sژ���%p}f��9�/&R�O+�}�1G��z(�����̡�9��m4�͡ 5�(>Mϙp�m�ը�zm��T�k�ƍh3�K�f]�ljo�_W8ui6烷=�ߴo�=$���l�pN�8��߀�}�����u�������m�{�6�XA�]����_~9���}����E����ԅYoں
}����?&s��M��f�F �t����# z:хS��A1C#���W��hm`�z�<a���lT�����xo�K�8�n��dš��� ��8Ýh�Q1c#�'�`��Z������ߐ����%OX���h���$+L,u�^��7�T}��_��.�l�{?����.�j��h:keܨī�t-U�j_�e����x}SR��l������Jwt�..���p��e"<��F�L�������O��p;��%�.�R���V��Z���qV���	-JB�ߎ�}�����s�'�B�'���j�N���o_�����5�y���E~r.g�]΢���^	X��!��K��^Py]�>M���sW��R�"�>�-��ats��<z���,��qly�~v>q$uiY;�חA@�<a�*|��Ga�KV1����lđ�M�Vm*|C���N��{Eg��a\�'eHz��F�m�*x����BSjiߚy[���y�9�râɶf�Nm҈��{�\�=���+�ᶵ�/��aO�;p��0�$U��Ӎ�y[�����mw�1Ϫy[����M��M�r[���ٔ�O��w�Y�t`� U�ׯ��NP�&�>���l�O�/w嶒�z��tC�-e}Ѽ����ag[����By�̿-l0Q���0���O$��pԡ�RR-g�Ψ*�e�O���r�fU��l}�d�z�:_�k[���兽����mi��6����M��N��${�#�����pt$�	_���N�r�����f��&~���6R�L�5s�2���5k�co�F�8M|��~R�L��POL?�q�&��ˇ���u���A��R�¿6s�Fq���t�Y3�h�Q�r�V9)�}�0���I�$L�MF��5�Y3kc��x/�3�q�0��҅RJg���q����&p&�4�F�p�r�5_of�6a��n�Do��h^/@d�w��h���tɵ���ӢM�6��w�9�>q��W�an�̘�Q�';�
�&͌)�i~�.���(,��`~�#���¢MV�(�Qyꤙ156/]В���$�F'~����n�0��6WJ�3�13c���˳׊�L���R̸-�u�� ��Gٿ=`�!5� y�g1'��b����u�z�Ib��,n�a�4�$�g�׷��i�ÛH%}n�Q)oka���_-ܿ�a���J�'�|�Cx�\Τ%�������?���q[�da]�ͻ�n�2D�LДU+����E��@��?\S7Ek,"�A�Tܿ�y��%�3�Zg�Y��V�%����>�a�����X�>sE�q���7��!F�<qEs��g��%��[�n�bA�:�畲���dxV�}B�;����X�N��Z:yy�4b�	�7^�zC~��vjt��%����}����hb5�\_�����}�;S 2�f�:�}v/��z��)��U����^�܋m��էLI�_|B�6y�c�;W!E�<w���O4�hG�>a�m?�}��;J
�w��ul�v˯���Q��u�9�pN9�q��S��h��d�|r��`G	��e�)-i�����a�4\,���g�)����2�ZnH�B=��^~�7��c��}�,H7���P���������P��ЯL�^����^��]i~�}-|b�p-�i�p��=��}��?��щM@�&�ak��^�����t|��o��b�4:Y�t$[S�q�[5Kc�uGl�x�y.��&��~{�~}�,Q&��Cp����mS�(��䰸~�)s��WĿ��\
��,�Eo(������a�j1G��2Y�'��[�r9
�q��`�x6���X�N�����d��Q'�R:��eE�<Y�����r`���H���=�td�G>J>Z���ud�'rǌ�D�y��w�KC%����]�'�7$�%��p�~u�pO�����g���\�2���rbS��� /Q&�e/�&��\a�:1�E��|CCF�P]�X�\�[�M��kռ|C�W�M�׽,af9S'4Nk��"�j:8G?{�(��'�K}E� �щ�t_��Lh0c��&^�b��|�a<��&^n�,J�ܐ1����7�˕5��i�.��P��5
�Y�Cv��i��$���� 5
�q觤��_��F�8�* ��AN�M�jF>��¢Lf/ē����p'���wǦ�vl�^f�no�еc�Z9*ן/A�6��]i�Ά�b�(����~����R�����\�NIS�6��H���冥JQ'�Å U�^͔�P��|�L��?�L)*�q��C���&�L)*�i��r~A�Ŷ���0]����a�R���І@�����̔����9��p�R�����n���I����}�%'�L�rXL��]�j�N���̴-��C��>��1����/\]8�;�6���_�P��^���}�pI��L9��]�MOU鍊y[����g{r�Y1oc_���W��.��m]���hI�L¶u�/�@��`�q����D�v��7lm6   :�]�bs��76:Yq*������Ѷ,q=���ݥx�ߜ�4�^(QϜj}�i��RI�7�Ҷ(��ն6�в�;�mY��ȳ� g��hSjK#���t��8ږ�>a�2M�l���]�~{C&�r��6m�b�4�8���|��!���7��◔1�_��[�K���[�#m�z%�޽;��q��d/��,��:��Gˑ�>V�o�ܥ�@�q~��_wq���1�L��"�]�F�Zk�5��f��~�^���3ᣩ�l?y��}���]�7��88�6ZSW�|0>f�=�g�L-��RJ�|b�y��ű��x'���5�~OQ9
Eֶ�$�;go�݃E��`L�2�Q'�azT>r8��:��-��7��2�$���|
7:�$���/8;1ކq�&�q�.���V`�?��������,���d���w��[<������N�;?��߯��~Ï�Z1�_o�g��E���O�ys������V����˳��[,ҽG{u���˯_��/Ӗ�      �      x���[�-�q%�L���8��������ܲ)�u����-N����������ȺEE�GE֮2%� ��c�ε223.����	.�/.}������o|
�s_C|������_��g�w�7��������7aą�r%'�w�p G�������cv���� NVO�8՗��}ف����_��kʯ�B�;,��dop�d����JL;p>���7e�M�" �p,�r�V��U'��JD����m��i#l
/� ʁ�\�K�M���9�r����[�3B�Z. ��g��&�y������^·��xF>ob_�/:�/��j��hF?o�_ ������)�1Л(��=��|M兢�3s7����V�@ĊnyAq!�������2V"#�+[��GZ�Ml�䒁����՗O
�A��+Rx�d��+6p�X��&J6��@��ӯ�}M���!���JF"tr���c���DȂ+O����>�B����0d�f��#H>���Rak�c��C|Dl����0>Vm�#���x��ۻ�����%�|
l�u�ްMl��'�����ñB<cc0��� �2��!��L�"�����dc�_C}U��Y�P��ƀ%0Vp��c;�FG�Ƣ�clD���tdж�7�(���^���Α�m�cE�%�O�Rj���!��H��lD��^	��3�6��^�dL��XxY���ȗ(���׈����P�2d۾H� IE�F�sj��h��FIŔ(i�V) �-RE�%|����p�gI֍1I&�LAH�!gf5�H2Q�N�����<F�gmڠMTl-��
�ab���%0_'��Hǹ��({�c`�L����Ȉ�Sx�����D�@fll�FrM��òڶ5�M�_>���Gm�#Jj�|Gg��:�!����IG�{��;q C6o�I�������
&6�L�h��z<��
���C�틈��M'��cel�ض�Y��У�P[b�be�66�
$:�WMx�><����I�$#�8���۱B�`oض��%��'�����F�uA� O/�jv"el����>�
�kF8�1}�D`lL�<-=Zظ@9ǒ~�S���q�6bG:oT��сagg�Ɵ>;���F�AK�[�ۛ�8�;y�I��N�����'�$4����#��o��&�q��q��� 6W�}\��ɂ�:I�J�->���¡�l6H�F�N���5⎝m��Kf����_ŕ��Q�]�+���)aĊ�&%���hI�D�����
1�"�;����SY���v7缈�6�b�%��� ���(~���/6^�
�K�R~�Z+���?܊m�%�`��č�ӳ���Г��m�$�%1�Y�v�ȱm�DhI�ec@0�G����"y	��wD�t�~�9����쁖xJ�/��+�_$vh-��-�I>��d��&V"s���B7Q��P���qh)q�,)��n9�I��8���L�Hw��}m���ڰM���W��MOa!��sFV#1R�AB�cBI!��P���q�D��_#��"��g%�+�����$����w��;�����#4��!Vw�;rl�V�\�y�Ɵc5/����Irw�؉�̒��~�n�ض �ZGl�qR	��)3�6�Ò�$4P��:�K
�n����6���	A����ƍ�i-3���	ܰm%��m�e�[�� ��Y7l-���Z�����qh+�Iy e�C6U���'��h�OXY��1gǕ��-	{`e�M8e�8T��6Z������k�3Tp��<�n>X����^����ݺ���v��M�If�~;1��w&�GY��d<�п:��ϛˎ�j�����ː�M��q�ă�s��cۘI�NR��%��W�K��6j��&��`yBO��sG7����'����J��&v҃�����
π����Ww;�q�$p�ώ�gn�C��򹉟���'��^ݣO��r�=�GI�c�����(Z�r�������7|�K����36��[��
�����d��W�J�7xo�O���d�'�&�S6�`�>�y>�o����-�@RU�G+���aCO&�Ib�"E��5���(���9'�|�jpAz�ճç��P���WM6Y�cY�O	j���)6x�Y�_2�r{N���X�H_Ut�rFߗ���$��號���e�@�Y>���3_䲙��*|�cQ���U���S�������|y{�I�}�g�|��~^Rv�o.�&�����
p�)��r^Rv�/�	R]�l��]�!�=z�"(k�����k��� �mx^r^�=\���Z<��Лxf,��d<|8�◷�&F>W�䪹�71�����כ:<z>I���71����7�&�Л�p.�M�:|J�r��h�ܨ��&9�8b���M������$�����ߗ��69\�r�� 7i ,P��MNr�\��4v����"7i �_cN���&�]�����&����՜no����������|D����@���_��H��g\8o�70Pv�Y�R�tƦ����tƦyإ.��-_]{��������7_�����>A"�zcx�<W��䁱|A��&�]�1����ex��뗷�&����E^arUo�@�=�j��&�]�S.A0���d���@	��+r�u�憎��� 7Y!l��h��r��"|ą��X^�����1�����(�%�Tx��e�)
a	>���)
a;<:G^Y^���0��k*YJ��)
i	�������MQH��x�)Y(�����\������)�c��_Л�36њ�2Ao�d�����R�;��JƮ�w���JƮ�,�������w �X^��*	��{4^������+|��^�/�M��]��K�� 7Urv�� ����M��]�+~���y����x����>A��� 7M'l�E)c�r���ڞ潓:En���>7XAn�����7\���|�.�pY��.�:�p.�M��W�wYm�@��
�n�+ne��:JΒZ9�6��]����]qpa��\y��88����+��W��W�ǟ�����$_���E��"�:�6�I�.�����Mp��+|-��w�$�
�B����'��WS}��&8����T߿+^Rv�h��w��KҮ�1&�_rAo�$��(��7^Rv�U��]q�:cK)�k���:a�'��6~���+�A��pEm���C����l��%Bv��?�u�O�Ck������nК0�u����c��v��)k�}�	a�����~^k�@����'�_֚0�u�>�J��Zt�6t��6rAl���[�F.�M���JZ|�]*���|)-ޠ7q`l��o��q ��ݠ6C�ӊ^C۫��P�!�i�o��"��j3$<-�9�6d \P�!�i����k�0�;-���_�Ð�,SC/�͐촂��d�����V�Z�%Al�l���j��n�!�i�Gt�r/�͐��g�J�_P�!�i�/0�^��!�i��	�|_� 7C��
�4��pAn��'��/��_��!�i���O&�^��!�iE����]���Vp��a]՛!�iE/qߠ7C��
�Q�{�<�N1Q�t��ܤ.�͐��So���!�i��v8_ћ!�i�ǭ]����͐���z���7C��
��p� 7C�ӊN�����a�wZ�KHM���͐���.;/7C���x��U�r����!�� 7C����棳��>3�N�scS�<ӆNw�C�ӊ^x�����0�;-�%����q
>ҥА��皤��aHwZ�3���<���N|�)��KWÐ���RYF�(]��Sr���·��u_��C��_C��0u�����Ij�vZ�#]�Vx�T�;��2�E�	����L���]�p��lk��fHu�Bm	J�N���hzA���W}k8a��g��c�vZ����@�L�'-r��|e�}���1�C��\��������`
˺�    T'B�xҁ��=m趰��K�������R��R�����z�E9/	��{�k~HuZ�#UG�����|�1�us�RC��
T:"���Ʈ����N�!�iE/~4�L��Nz�Yp� �N+|�uS����e;�w>fA�r3�:��WM;۞.����Fd�HW�lHtZѣ�E��p]�+z=�5s�jb�sZ�:����������laHtZ�1�>&']���C��_N����滃8�:��1�����봢C��r�8�:�𹅽����8�:��©�⥫�8�:��3g�^M�!�i�@��Wq�sZ�1���?��!�i���j�]��Մ��U#,������DҜV�����]�!�i��4aI����&����p�����f2�V��`8���M�!�i�ǳ�p������1���
���&��8[_�EH�����D,����X8�WqHv���u5Qh��ג����8$:��$_�O�qHt�>��S�������8$:��5�$ϰ��8$:-�!�����8d:m𥀼��?�!�i���� ��?�!�i�/�y�>�!�iEo�����S`R�6�R 	��O�qHuZ�c��v��L�9�82
�C�ӊ�Sq��?�!�iE/�@�|
�C�ӊ^�1���10�N+||F�����R�!щ�)�#6V͛�bf��z8?d:<��M��"��6�Љ�.�!�i�O����t��h�m�9c)��7i�F�hR�F�_3ݫ4V��8��M(+��N+:`Y=M��lD�S���@ݔ��,I,�	���S���l���R�:��(e,�D�J#<Y�tx����E/R�6x�8���Y�PN�{/rJ�:����˕S.�WkN*�<gE�ӆ�]c�{gʚ�E�ӎ�K��/��脥��^.�0	��t�fT/���9�yA$:����ժO�J�O�oj
m
��"ͩ�'�"R�g�]k�)��	�"�iC��;��DSp ���>g9�p��I�k@����'m��nRɊq�Hq����}_�&��M�h:���ΣHp*��{�g���ߝG����;�6���y9N<m�����<pu��0�M�pw��.���2.\�灮+|�c/_�灰<�fhSr��<�]�s x��V�c��ޭZ�y`���+.ϋ����v�@y���>�V.\������/��˸���n��X��6���p{^�|e���ݞ��q,
c	���n�=/
c����d^�=�4�\al����p{^�|G���s�T,
i;|�IZ�oϫ�Z��i��e��'V����}e��ϫNY����ݟc ��X����ϫ�X���^����y��_%#qdfÅ��16���������E��y����(7^z���y��J������M�+����ߞ7����x��x���i��4e���nϛFXB������Pq�b�_�=o]�GĒ�p{�4�J�Afl^�=o]]� ߋ.\�6��ѽ
��U܅kЦ��=���_�-�$��G�&���MNa,��x�_�MNa,�'��s�49����$n���-hr
e	>CL�&��-hr
g;|��b��-hr
g	�Mw��נ�)���%&qy>{J?�N؆K>I��_�&���/�.^�&��!�Ze���kP;���F�Z��ټvǚ��UoT�z���c��k\%�V������M^�*���Yj��µ�+L%t��%o��/��W�J�*�).���
U;z�Y\��������{y�𫰽̣+L�赲�㋗�)(L��y�p{��V�ڱs}��<�����U��u�8�@Wx����*$fGO�MC���{���l�'H���k)(LE��JbW����d�:�+T%�\K��'2%��/�+\%���W���d~�HA!+�'�SX3_��v�+\%�S�?�nl*��IQ�*.��d�r^6&�)�3Qa+�7�*{�,�Uc҂���
_	=R��@�����=*|%�Tj�}[3`�k$t���+K�/|̀����Y���u�iɀ���L��h�iH�����d��U�U�v��j(M�okl\����.�
H��h��V�~`��+r��W�����4���W�kV[O��v�&����=��Iؾ/�΍"�����Z����g7b�msţG���� �3��&�msM�����R���&��Z���.�eVg�Nk2_�z���;� ��>�.��+|�}�/�_��FW���zK�Va��&�������V����S�/�lb+���VDϱ6�ʝW���$P�J�%4�$��,mWX��5�«Pg�,��ui�e��fLlZ�Cj�%�;-�bb-���Ԧ�=���Vf���{_#-ʻ���,&�~�����ш�y�4�����cr���g��|[8�D�/�x���ޜ��n�9<�D�/��1����H��%�n�����4f8-�����ۺ/�D�WhK�ᣄ�Zm�x�1�i�o����7����iLq���#�\;�¯&�~!�+�%�<Vx���^��z��P1Ɓȝ9�����jҘᴠg����ʯ&��WLc�S�o.F��l��$��
o	ޣ�U�o뾚x[�UhK����$��{m1>Kc��>ƻ�DZz����"0����bc�a���!z��q�4&9�א�͕O3:�o7�F��c���e��-�f"�<�1�	����m↾S����i�pZ������|�l�,9~`�P�ܜo��m��{�1�i�/t�%��_ֶՒ\�9N�Λ\�O���@�+gLqZ����v{]o&��Hc�ӂ�g�"��N�f�g)����K�I�m��gB�!�)y��]�e�W�Ӑ��gW��r��i�sZ�1�F��'Z�!�i�����D�4$:-��F��4��D�4d:m�u��9�h��L�>�a�D�4�:m�d�&>�h��T�=�"g�M'Z�!�i�� ��D�4$:���?�&�N|)�h���iHu"x�+-�d��D�4�:��xp�2Uy��jr�V��Z��Ӑ�·Բȗ��B5�N|D��R��0�:m�Њ̘��
C��
]csƯ�YÐ��g^*|��*�N+<@c��.�YÐ괢g�+���P�!�i��Ĳ�`:��D���"Z�\ȳ�!Չ���B�d��|�5�N<����y�0�:����=.$ZÐ��W�d߃�LkҝV�e��|�5�Nx�9��Y�0$;��x�w���,k���gM'm�ϲ�!�i��-Љl��,k�]	�yْx>��l�=��[糬a�vZ�qkq�9�|�5�N+zF�eG��,kҝV�⼓���Y�0d<|{� c��|�5IO+|q�,k��Vx�9X���Y�0d=!�w��8ܐeC��
�[x?����=� ��'YÐ�'�?������!E|:������X��dC��
^}x?������pC�5IO|�'YÐ�D��cdU�ג�a�yZ�[�2Sy:����<�����$kr�V��x+�I�0�<-�1�Ȏ ��a�xZ��Q��.0$<-�	%����$k�6��L�N��!�iE������aHxZѓ��i��a�xZ��W�O'YÐ�b����$kr�l�􎧮�I�0�:m�?�]M��!׉�i $����"�z^c*%2��9�0d;-����)	��<������jT���Ð��§�Ga}� �����=�\�>{�EX_.�k�%�^���'�Ð��WtN=[_/�k�E��������yr���SI�p]�l�|����|���	aTs��"9ߌ>�9��3��{1��,�=83a{�G��J=gb��`HqZѣ�l͈�;��UBϙ���e0$8���2V&y.[�@רJ�-�([�/��!�iE�)�X�u\c*���(b���ܦ<�sq^��CjӊBf�Q�9`Hm"�''_��I�s��5�6:9�G˫�"0d6-�1�N�Zd^�*��������(0�6��PJI��|^ck�ǧRdA�|��M+|���r^#l�.���?],��!�iA�ska��s)�|Hl��ca�֋u:0$6���.	.��M�vn�XZVS����X��s�\�+��4v�z��    ���^b�l��dvt�����+�@Kh"�Ƨ��	t����(˯��@�g
t+���$���Z>��X���+��>R'a}� �Е��oQ֦MWw���D�z������]��Ea�|�h�L��=���:a}ˍ�^�L-�)�R���FT���5��Wv�����{-�	ыo���,{��g-��Уsu(�����Z6�*Z����_���7T�e-���[r����FZ�o�U�^�
�ZRS�[��j����o�2�׫���D� ���_��u�VdE}��1kYM��M�>��kYM��P�y�d2kYM�g�k(*&M��5�R���,ڛ-��ZV��<��4����_��۵�Y�i
��"e�ڲ��O^׸J����PI���&�O�I��>�kd%t����:լ�5>��A����x-���s�����f-���KW���l�4�w��/��ZVS(}�)b{.�5���u¢F� �f�~7k9M�_n�f��l�d���!Y�>_���&���R)��`<�6 ?�6O��1�)R.�o�����c3�����q�8��ӕ�y�jZ�ћ���l���]�y��u�y�jZ�+�{i|������x%�Ų�<f6ux��t�,�?0v�/����<�6-��O��2?Pv��T&)��.*�cvS�O�*�w��cz������1�i��eI�:��s6�A\z~�">��M8�M(��u�&<GY���>�YN�k�t���y���h�GƎINxƈ���?�)Nx���g�j~3����|��������[*�_�^&|t��ߴ��YD���w"�c~�_��щ�����[�u���nt���&�o/�� �����е�?T��wQ�cz��7/�/S��n4�6J��M��B��<&8-����ѣ�z��V�v�_n ����V�j E3��ഠ�x�_n/�����z�	��_]}�ot��c�ӂOk�H��>����懮-~vs�z����_�]��w������:f8-�v�/R�7�1�i�.C���������#qy{g���
otug��ǱT)�v�1�i�/ej.�c��OM��F^�Z���tfno�_Vgjs��A$�w�1�iA�A�}ng%t���{�*rz_��Vp(C[��}uLnZ{W����}u�nZ�Q~�Pr~_�����P�8x~_��VxT�!���W�g�����0��7�1�ik�}G��<�7��^-�P�x��~SyLpB�Hs��3��!T���C}��T3�:�wԫLX?�o*�N<�����5�o*�N|����G~��T3�xJ��}���M�1�i�O9ȶG����ഀ����	���x���N��~PyLpZ��O	�Ϸ��c�S���Ǐ~gx��N�u	NM.�r3�8u�38I�r3�8-��I��妌IN|q�䚟��2�8-�T���ڔ1�iA��ƋUAmʘ����1��ڔ1�i���a^��2f7-���N�MS�������M3�t*a�=�妌�M+<��ѫrS�Ԧ��Q�����rS�Ԧ\�-�զ��Mziaa|Cm����0���6czS�G������VxY�S�f�pZ�Ua�/7~��
_��
t^n��=��v3�2�7��-d��^��1�iA��}�!���V�>l�ٌY����Ծ��Յ��77t��܍���*IlDzS�������&�stc9���Ւ�t�nl�H�I�ד4q� �_��m��wHu9�������4>z����G�"���D�x�SƐ,���ܦ�}�T���rao��%9�M�"���y"��$9�-���lB�H3�\u1�.�nc*j{������5-����[�UZ�QR5$jW}�S
(���d*��FYr�q�D��3U�lw!5����U[{��gȚ�g�8>��������&J�&�]�+��d������B��.�5G�5�N��9��� y^��CzE�|��?9�����%[���4�x��[K0K�d�0�b��X<'pc�<B�d�;��*"��9��gl&p�Քi��x���/'pc{B�dE�H�P�-�����%IU���������`�d*�J^9UH��+oM@,i *c�����DT[k�>��C4��O9 '*�z��*i j]��w0>q�؜�$2Lmk�'rG����"�	M��ޛ3��T�
�9��mvG�#z��6:�����OҒ<�3-�_jb���n�*�G�z�z�՝���#9&I�Hc6�f�spWI!ϹL:4ܴ��O�&��B�S�<�����є�����*�G<؜�@���x����=�éD���J�I�L� ��򩴍Û�J"��fT<�!�Dy��z��@�B�j��� ��dkj�%2L-m�J��y��O�y�j����L�;��lm�h�d�U�7*�\�	�o�6����*�7�I�s��n�V��*������x�q�d&K���I|��2�V���m��\r��*~���|�?��\͒���[Gt�1%�'tU��"��A�����DTZ�E�Gq{sl�l���X�R$M��0<�1}��M,�.I���_=�@��n")�$)�+���)}��R[�L蒤��p�.|F��H�M=L*��z��J��{b���Rw��)�C~��*�qG��S����|ߘ2=���o�=l�&�
��YL�^�5�E��ۢ_ڗ�YLz��g����vP%�=g1z�F��&�����o����ô�ch]cE�=��n~�9L��e&c$Bwtk�d9�0-��U�_y�In~�)L:�W��eG7�S#۳@�<s���s�n�Q�	L��{W9ȧ1��o�d�r��b��TI��m���3�����R�1�S��n�j$�6IU�O=���<�m\uh}�\�_��>G)���e/�J������}}���D�]7IVD���*�v��<Ѝ�|]���jֆ������M�"��ģd*|�G7��T�I�B���\d�|��mk�D�K�"6�J4D�	���ML�=�I������Ϸ��-��,�D�>�7%(��Ps�[Wzu����-4���8��^\�t�x�3n��L�ŃXE��c��gz�`趮���b��(W�5q}z��$ }�h��$��r��sa~uG)��U|*NF�;�M��K+�=P��$/vx�4Z3O��W_��n��wl�?3��Bڛ\=e[!x��m7��3M�����a;Ԅ��	��ӕ�=�3{ʎ't[hM���D��y*.%����Sp='+-੼*���i��PQ�[ϹJ��^���7��m�`2=I��:�"nvpc#HB��_���	��T}����j��Rg���m�u����@aL�ˋD�����zI��v��_�r~wt[�_�d*���S���G�uY �I՘�I2Q���������+�����[��lM��#BJ^��q:��I��/��f�:�K�.�ѡNʺ����$cWx _d�dZg�/)��g��ÞO�Arv�G-+o�u�I���~Zg��|�x�y/��Rlj���������:k��]�ͧ??�։��:eS*��\����uƦ�N%��̧u��,�MT������z:(���^��N�[j����Y����5������괮�H�(�5�]�C�aDz�a�8�w��N�5|]�����#�k��c҂�~nD:=��4Pv��p�_�^������
ͮ�H�#f(��SJ�#�k�	=�ވ���NX�.�,??#�&���jf}c�ZWf�7BW��ѡ�ADWG�פ��Q��$�K#�iـ�X���N�7'x��

c	>��f]��l��_"O��8&��BXBo��N�WƤ/�Q��)�Q??'���YO�ʩA=[?7'��k�xDJ����c�+�Ř�eA��1��+����VζϏI���58�a�x��1�W|������X4�c�k���_��y�X��,fFxtN����r'��r�7�1�Y#,�7��(�������5�f���x� �5�"|`����5    �"<uG�wx�$�5�"<��r`����{����G����o�e^�FZD�ՃX�s����/gOSPζ�OJ�E�lh{����N�/:e3�6���I�(�}vtb}#.LJ�����;/�Z�6)���TƖ0b+g�''���DQ�J�S�S��'�עpѳs ,���N��jQ����ތO��Q�(L%t��k���V���"������kU�J������Ī0�������I��L��Ū��NL�:S3F�ΦO�J�Ugj�ɵY�}��L-M�L���^�FUj��*�yݓ��� U5�RdWY�����k��Z_�-�u\�2+�jk��J�PY$uVzm_�r�,��4+=҄K���	������k�[�E[� ����Ne�i�E�+{@�:+�6����\�YLz���N��q��[�b������4�":�rF��t��k�K��]�#�G�צ�5R^i��"��J�o؜BWB)d��zB�3oNa+���3��Q�t2nNak���up��N3oN!+�74>��f�c8֜�Վ����8+�9����}��Ҭt��
W	=�Pޞ�ޜ�UBO%���Wf�S�P����gӧg��!�i�{C�2+��ڐڴ��P�ۧ���!�	ѓ�3+�Q�������M+z�&�^�ކ�������a���޴�S^��=?,��M|q/&v�Z`��d�B�_ �����pن�>�ɸ�g��#���>z�EX?=,�)N+:P�����a��!�i/����a�m�oZ��.K�5?�7u��o�pqXzӛ<%=��y����sBp���[k��,�zaXzS�:8n���Y�#�1�iT29n|~Vz�:|p��;,=�ȏ�M+<������ۘش��V�X3���qŴ1�i����\���̦>�ۢ�~rX::���M|B�����a�m�mZ�K,�f�°t��ٴ���]燥7-�	ѣgU���g�-��ó���Q�M�j���!'ޠ�¨�n����/EX����޴�&(x��8��'g�W�-��×T�0�¬���5��͉B��J����D�!����Y�MKl"��Rf�O�JG�6-���SLe�5>?+�i�M�O�o��O�J�~�~��B�����7|���^��N��қ���tn:����̛��D�1�:PwrX:qW�o"���jpeZ:F�czS�"�|������N�����R� ��i�mLn�����Wͅi�r��M+z;�Q���ֺ�n��Ԧ�F���:-���Mxe}0.�bG.�1�i�oI��8��1�),sY�����͢��M+~��.cG������\��N�
m�nZ�k>��8����Mc��̝+��q�icv�
��se;�Fgl���ܹ0�C�6�6-�)��a�d�N��<?h^��Scfӊ_�Y��0v�^gl�~o�b�ɘٴ��PH㧇��1�)P?8ܢ��c��,����\h\�cocfӂ�S�Be;nmLmZ�[�Bq{��:<��τ�2�������[�a����ۘ��CnU.�]�m�V��Y���vh>=���9N|E�a���8vz���Vx\:MZ?=���YN>SV�4~n;��1�iA���Ococ�ӂCユ.c'���t�[Y��i�m�rZ�kl|N�i�T���D���s�^�m#�}TS��;)g8�P���(�;_�,�א�
�����
�+�%xJ���GgkAW�;
if���i�7IB���1�i��y}|�zm�����d��?o��R^�^�l������$�i�X�I?����y���'�;�8� "y�|���<���h��l�p��c����V��r��ƌ�b�Cf�Yz�����S��b���)N3���y��[�_�GI�1�i?5[�2J��f��9�v�GZɡƳӤ|���Di��8i��h�����~~�4���� �?�_�(M���g�Ȏ?�_�)��i�R!Cv�JSM~�@��j:>��Xi��y�]�		��J�������ҋ��]�n����+��1��ǹZੱ^�OϖFx���o�H>9\�:��1	j���t��xi�׹��ܘ���s�)q?@�n���@.��	��S��X��ӥ���%`�e��i�ګ��c�L�G#���͘����P���t�����O����~�������;�)���~��~���}�ӿ���0�u������O�Gv��?���_��O�Sh1��7�ߧ��?��ic���_�k¾Pz�.�X�������<��Tv��o��������/���[��_~�~}�Ư���g�����s��=�����O�=�F/l��b�娽�s� 㼪Tp�� :I��hZ ��HQ�1��"s��.��'<��'½Hv�̰�F*�嶫�9�< ^�,���`q@�T��jb��7��ov��R�Vlj�z��������F������ƪ~3���ء�G)�x����(@7QW���e���7��.�!���}�ׯ��?��k�����o��� �vj2Q�w@�8�vu���N���o��ےn;�.NWy����/��0��G�LZڂ c�i��50R���t�Lq`�F�"�\����)4E�=�*�Bh2Y�f�"A��G#uD4���CAcS�^�����1�@0�M�`&�&]SA�{0ښ�-�&z▯*7������p��9�< �up]�uI����?3��`�	)���5�kE��mN��>-�&B��ȋ蛝`��r']i����1���A�R�,���Л�C�#8�U1�����k7fk�ێ��"��*������ϟ��?������9�
���.(���.0��/V�E�x�	����ε��X�)�"<�S�H��h����rLDg�����]�Ē#O�H�� ����&]K�M�Wں�[� �.��2�,8�vS����R�˹���a��e]kF�M0nv�)D�lY�GyVNU��OxY���|cAry���®�Y��r�	O'��� ������Ox�v[���+a�4>���`s��譣�J���s�z�f�b�~��5)����9Qй��<u�5-D������.�E�����������6�X|�Đ��s���f'�BþiM��;�\ye���:�59Dt�V2��f�"�~�U45DE;|9����B滳��!�������.�E�}�.���pγ�S��6��XN��5=DtZ|���ޟO�������������Ï��_���3��8�����Ѓ��Kc���-�Vo����4ZGKx�o�EWI��w�#rgL<.W]#���d|����~�Uu��1.���6g�' ���1�����7Lqd���.��~;��9�V���u�L��>���-�쬮��&Z�fd�s�?D�4e*��r:W=�Sp�7��h�щh�/l�&[�τAU��Ϲ�d����	�M_O�/�-��k�zBl�����v�/K�.�P���|�؜alH��u���\ϔ�yc�ɺ����(_,7wL<Z7]A3�d�4��Q�^��ϧ+h�Σ���v�4z1<��,U�����
Z�:��ɩb�r���Zp;�ɘ�R%�b����E�Tz��r>�mް�O�K�U��蒬�}��(�u{u�):6�#pݰua^�u�����o�n3c7X�Q� �2�?��F/�6���Ϟ^�1ґ��������Vw��Y"�.��Dbv)�������ӷ,߾���)�˯��fk����ݍ�O;�&�ᅧ3'�����m����2�H�uxzdp�wc��{M$	�99g�/o�,s7O�D4�f�E������8���&"zc��[�������0����e��������'\�b��m_�~q�&vh�u���������kZG�͉��w}u0E���qԔ.�B�Nv_���Q��+]Ht���tȾ��ۮ$��0�ԅ�'w����R��/+|���c�����n!C�O��ci]�{㐏���]��8��/o�(�Ϋ�.�b.��7�ݍ=^:��v1U':����m�]���bi:ͱ�/'����B�^��H�{��    �����.�y��%�o�l�}{۵bG�/ArC#�۾�)������R��h��~���ַ�8t��Qsۗ7�v�t���,�޾��ް�낇�����n�q������!ji�ר����@��j[��^�<�ඉ���g��������k"��<����ܚ��[�k`�C���Nx�3l!��k`�ٱ��3�-�?tF?��5/ԣ�q�B��0v�_�uM�	Kf�O:Û��ij�K�nR�ɹ��3�s�)E[�o��8=�`q%!z��Z(�^ʙ��'�)�^-�A�X�0�!WDӪ�w6j-Z�=V�'_L���0߯���ΈO9#Y�����vV����X9��?.�tֈ�F9��!W�ĺХ��[��=�����u���%QO9#ۜѵM���g)p��{"�Wkd�y�מtF�o�j�Z��Z9�a��-�\�u�l��4Lx��賫�Z6��6�vhA�y����k�i�����?�S���IjZ��C����:k�V� <*�Z�>�b�>�o�I(�������ۜ�_�P�ǈ+��r�-���H��&����ȡ�����A�WKk>���������������w��/���������ǧ���|��툔�bjGTL�r�Tkl"]�� ��v_خ(xMB#5$�A��>�[��p��F����A�x�9O��4 ]l|9Ҟ�- ������lR$�\a@;�.��E�E��ş=
P�o"]c�(^�vW���^���G�v��/L���f]8c�q,�\a��M�ju�GG�jy��س�Y�Ɖ���Jn����T�q"%){�±>�S�ك!�,m-�'9pps��,ǫe9�^|����)��w�jqN|Ah�{"�<a
:t]5c�t(Ez��r.��		m���6W�F�,�hBq���W��;٩U9hk+�%�S�i4��պ�HM=o��`�YM�f�S�r�C������ޫe9�����5�_/<�/��f�\���{?�/��^�ыf����������������X,��a,��g.j5N|U<�����{��W�q>x�z�G�`�1{&�Z��f�rH�N�l1���es�vV�<����r�_1�8h&Fڬ#X:y�v�������ȗ���`�,;o��4�����y�Y.�F��sγ�1x����~���ܠ��y�8�O^0ϛ�^-�Ax��&O]w{�O�����l����|`�M��5i$���#��h�����5�&���:�D�8�b�פ�|�����e��4mL���g�1���;K�]B�F�ǳ�U�����+�5���}�S�7/g�wx]���g�~�lqc迕.��G�w���V���;:���1�o2��v?�B��,]#��O�)a���uy�xTi,~~��бt3u}L�z�gJ����&Q'��L�g8a
3uuLP����v/�B���� |��w�y$�n��1t;uyL�j�w7��2�b�_�Gp�3ǿ��<̠�٠�P5?��ֶ	)+���@5d���~��`�n�.��cZП��[悮+dv9�̙��Y+�=RrOPKo�D�(Y�-���6�}E��1�����o���Vߠ��ޮ��������ۼL���"K�\7�ڪ�	^-�A��nH2��_[<�)����W�%xQ̸/0��x]oK@�#I�{���n�.�%�����?��X���u�-�"!������n�����p� �`D��u���ta����oo
@��KlM1Qݸ}S����[��YTn���[�n�.�������"`��$|���[A�W������]�Z��^-��'���]W����!�w�\��X��IԤ6�)��	t][C
��ǝC�lo@���^�ǰ�6��m����������7�������҃�ڹ޸[Q��Z�vf�H?lc[�>@�C�����#"wđi��~)Ӳn�J}�b��]����i#�(ፏ�]�ݦ�N૥>�_B��:����xz�-_�N�u��� W*���#P�i�C6���B"~�t$����?��w���O{i�+ |��PG�XW�i�V�{��Zд��m.���D^��$g�t�۟����K�Z߃�bĘ�Nlzg�u�5%��}�eӸy��a�j���TTb�>��j�bC߰�t_��s��������/&��P)��k�Z�/�0$ݹ�O��������o41�nB�=t���̋�|݆��u������q�����m�q�$��A�J�SJ�<2���o�^ <B�w��G�EB.d�.��j�1c[�:���Ў��?�5�.B�kWW�T�5鈴9b�t�M�6��}���@�vŐ�ˆZ4�;������ZL|�Z�Y8���>��?h���>"+�5Ah/������9d�t���,���=�.Bnd�.��J>�4�}�t�ą�Nxc��+Ʈkj)�D�0��m>���u3��3ǿ=p����=Y��g��Y$7��|]<K��g��m�vC����YrE��^2���umEn�i���m�v�Mf�YZe I��0��bV�K�,��cU�����Be�)���!�6�[�|�6����ZL��J�Lj{]���u�.��,S&�_�C���������ǿ}��}��rx�O �Q�&X���M\T�Y��9|]t�PE��G\a[��=T�&��Pe���	|��(Szx��T�	W̤h���6�3=f�mDN�TE��&S��m^ӳ���M�S?�c��n�&jhj�c�L��=1�����ڱO��\aϬTK~�Ҋ��8���'&�5IC�Vų�#n0���j���*<�9��#&>@-��(1:V�s��8'��?���T<�����%3��L���;�n�����T��3��h�٣z{��@��^�U@hi<B��`���[�|��c��V���W�C_���)|]6SDW�g�Ǣbۙ�+�Z��p�����
3~TK���$�fO����@'���e���O��3��n��R}�c���gLF�<(�p��3������	�ű��ΰŃ�۪kg�V_m���.�9Bz}5����|1��}49�ۆ�,��ڙq�Z}����׵3�Mnx��!9�кx憿�]ĳ/&�Պ��BW� �я���n�.�%�e���|]<������|an6��!4����lw�����(k���!�۪+g� Y�=�]1��+gM��gO�"����MՅ����g�+f�uݬ-G1��G�n�īE��|�C׳��j���ڞ=����n���-�8t=�]1��f+��#�h�y�>�'�5@������k���h���BLr@�3�0���ؤV���D9�����&��;Ȑ}��+�w�Q-*/j��.����&��&�Er~�)"�� �դ�P��8��Θ� �N?��C"�#ް�V�j�Pyj +ޘ� M?���uυZ�^N��!������O�m�����3:����9%�������O��G�V��+%�lu�)2\Αj1Q��1����3���Ɯb�ԧ���գZST^ɹ��Quw�����3���	wC�n�����E�$�p��ZR��x�]�s���%�e���E���oL��*
�uŗӁ�1g�[^F���\G ��ޘ�ׅ0�+�u�1w���G�ȨPg��R�������>��3����]��"#4��7�����1���h�����G�a���R�3*4,V1����^�B��kCtR{��`�4_-Bs��M���� ]GK���*�x�!�Y?���u�R�*K=<G�3������?s�'�a�su!�Ad���	|]Ik-�Mo�`ɖ��O�jQ�)a���;�`S�ki�.6YA��C�I�Q� *t����t8d��
"��B-Ǿ����9�~y�՗s99����	xMM����ܰu_���2|�����?��aN(ǩ~��Y}`��Vj"�V.
y�ݝ0���(���1�f/د+��!4��O%ҕ'L�k�I�%�I��	GLv+5��/jA/O��f�5�D���ۻ}`k��m    �m,.��-8����	|M�U<჉(P���@c�8"��0���"%��vq�	/�b���e1 �A<�N���U1�C����y�OTK{���J=�`]E�KV�� L1^�kU�D<)%�3��|0�k"R)��Qw������"ƌ)�'!wv�_��!|<h�s�{���^�J]��R��9Z���U1e��|���`��r7RW��r�N���e\M,�?)��uD�DS˃*]�(ˉ7�|����!EYO|�L!�B\]�C+��.�������S</�qy7S��L���|��&��� ����(���:����2c��[����UꃜX��~�����q:�Y������o�Ԋ �3Ŕ��2��0��kd����W�����9��j=�Y��C��3��F�Z˶J��!�g@F���*�u�U��0�kd�(?�Hy�&ޫ�2 ���?>T2��`�OjP}5�k앟�)�+�L]$:�t�rv�����IbZ��^��P'���,h�L׳f�u�l-&��y�le9��\�D���-��^��|M"?�Nt���?د�Z��h�]�e�숙�T?���I��{�� ��z��B��r��9���W�}?��y=Lfs/����4��d���	xM&��4<d��S�G%h�&��|IC��3��$~ �����~O���_LWʐ���-¨�Х2T\r&��(����O�ket-���WGL��RI](
�d�����?���O����ߵW�ʗ�<��=ݔ|��a�:��"4 ���xv��Z�Ө9ob�c�!G���Z��^&6{4�1���e�����;=�S�ӏ j}�qAg?L��Z�0tg�s�L�N�������Tev��	x](SC7��r��{k��t���R�i��&�u�<z��V�<�S���\�J��Y�\=���V�|M��W}���f���B���1�vD���	x]"�
��Ƶ��`��.]"s-r��	t]!s�g���B�=�v3u�,��#|���3��BR���`�a����Kd�{�8�b_��R����ha�۴,\]$�GC����;�Z��h���Œ��M�'Su]'��18b_�Zx١�O����5:��< ��u�&g�u�l�mzƍ��I�Ц����������ꆦ�3��\�⁥��G�������~����Nb�hHI��p
�"Vt39���^��Gf��$|ܠ�<�?��������%C8��x���V�C�5���C���� @��A��_v#w���+BJ�1�蕞��9�/i�:dpn��z��!���|A����G�4���\-�r��*�2���*�'�uh~�#�A�I��!�K�(F����U5z�����?l7���J��!�#:D��=2����~�E��'=bﰓ�����o(�����U5�	V��>����ꪚb�9��Ys���躊GH�a�A��/(�Z��$���p����xd>��逵��~;���������G&�ueEw@��z�P.�Z����0f����V�C����]b�(��V��&g�����5� �>��p!�uy� ��w�7���k�so����y	�''�-U���N���E�����w��{�س����P ��Q���)|]I�7>�q�`l�����#�V��ҽi������3�Ze�#;�l[}��t[�`�Ύf��I��Y�c�>��g������o�n��HǴ� ��a�Q/�9�3�J6�`�Cc­���ե�U���a�>��I���WP$)��g�]BÖ�VD��E�C�6�)|M-�:I�N�7o��%�I��Tͬ��.�7�|�@�=.6'0<�iغ� �qZ���t�p�4f�5�D|�a�P��Ȧa˳�{�V&Df� ð�}Ә��Dӿ�
9,��M�v�ԟE�
!2���T�}ט�ׅ��U<�<�m���V�br)��1�keh���w[���髫e���C�iӰÃV'D�����{���<�]���̌f��¶gL��".�,��Оa�2�c su�Lx�or��gL��b�� �����c�y���L]0Sl��t�1��u�L���	7����x�@u��csf�[�o3�Db|������[Sy�Nh����B!��	x�R��c�,wk��o���5���x��	��U�Jl���.��gٸ�]Ӗ!�h�j�Bhi�.w�#�yל��2��E��wMہ��R�ǜR�'Dn^�w�|]!sn���:��5m7t�T�-�e���λ��.�%�en�7����˯�+e�_�	7l���V(D��+�t���}��-��W+B��9bl��.�/;�������,~��t���rHb=l�����7%�����ak�)��*���3k����v^L��b�<.��vnG�����O����~�[5�q%l�XV�-�AZ�Y��4k��Ms^�ǆ�#:sܽgZ�w�����w��?ɾg��kB)���٦�홶������	���M�ۼ�m�3�P"|*9�A�h(��ʄ�L��'r5�s_S�@��r�p�i
��xi5Bh!5A�`�/'�5eD�t�>���-mM����4m�.�38o��F"<�O�"y�^ik��\i5Bh)�r]q��b_�"|@|9h������N���@�Zs���v1��+dt��0?�[�:��ꣵ�P��3�m���ׅ2�v�f�7�����AP+"3�)���S��`&��l�u�~a���(�QK��Bp-�c]W�5���Ўal�H��b ���F��c����@��R�5<�e��=z��(PZl΢���1&�u��������0�7����%2c�ϖC9o3��Df��E���6R�B?��'��/��5�o�P�\w��AB������"� �����w�"� ޹[�ھ�m]-�	����-�m�jU�C�Ut&yh���~�'�VI\
�&���b
_WɆk����v[�w*� ��'�ۢ*����b^��V� E}b���_����r�fֵ��v�)|M ?���Љ�v[�^}j��[|f�0��]L�kR��x�c�����<���LM/�����,ܰm3�j��c��$9��1̍;A-�AkڰoؚD"vk�	N<�a���`�$'�(��IJ���&���raY ���v�H7%jI��g;ݍ��̠�B0Ne�;�]�7����'R=wq��ױaN���}-N���{ô��41�4~�Az�/g��
�/�M?��.�M�{ҒZ�_ɗ�Ŵ�}���ו2�Z���{��5���`4S�Ȕ)nnؤa
_��Tbay�Mۥ�|W/�-l����mÜA׵B*^��~h�46��MjZ��^<�-�m����uO�%H����5�_Օ2;��;b�d����V�|+l��׎i��^)�U+o�De�o�3��<�Lۅp��{�-�돎j���R���yל� ] 1�<>�3��'�M[^c$ASq��PJ��反s�t��m��n�ܹs�2C_��V�J��(��s�t�,x֊rŝ{g1�|���:Y�@�Ķy��Z����H<�{���{Ҵ�⠹��Vl����Y�+r�x`������YY�����Ra󡗾7�h�����D�$b������/����O�~��_��?�;������޴�#��fK��(��5���5�a���������wFk��^�!�Z��3��f"�%ɡ5w����=Y#�9h'�"�N�Q��Z���9��G������Y��Asq�c�1��d�4�L/O[��{wPak������&��B�a]l1��&��P`Xw��9C�`�.M���R!��b^S��
�J���
)�<���e�h�$�#��� ]0CE6�{ ��uʧ��V校�t�)��/���W+s���Ș��'��������Cz�nsD,�F䏶[�Zzs�jyN�w�YN��b^J��Kf��Rc�Z�m�U2fzq.�6�)|]%cn%�Yҏ���֮���Z���]���T��뚙B*�f�?R�b�Q    @v�b�0�)�+�UM}�.�	�?�=Z�blQzY������0	o�f>@-��������l�ii�BV+u�L���>��U3��hBA74��*['�~BT�t�|6ϟ�Tf�u�����x��B[Z�%��ꂙQ�$��a
_WL\n�ʉ7�D�u��44S̂��:l[t9��`�"U�������/`]*�wm5t�.'�Պ����a�9�����b�~�_�^�	�Q�����u�:��qN��7�1nP�n\Hh�HX�ֽc��n��䱼g��օ�����^�+�M��{�<[h�y�"/��Te��mޛ1o�żkS��r�}A+��u1��)�9oƼaXͫ��L�c�-)!t��_�;��oo6��nº��i�.;�8|��LA_���E,xږW2��n�<}�����\�Ѽw��%@����Nݺ�bc��� �ۜ7a��]$��>+�c������o)��d ��f����[s� p���ݐ�y��A9�N�*���
�=�q���((��V�?R��(&|l�[��.�[7V�NRCcE�ڧ\;a�X �Z�kZ�7�}�Xc�q��뿺����zv�X}��ȋ����o�j���z��V\^v|ȳ3��[��^6|Ƶ��C�d�Q[l-��c��'=;a��iA���+�8�v���X}�ԣ�H��Ozv�Z}��^v�xƵ�3G��;X��yY���g�Ǝ�x��$]�������2o1L�Ԡ>��k�,�v�J�g\k�q���<��-ƶм����kg�շ��aW�r�yȳ��Ld���n+�����\;c���� �՘�-s߲��,�)�ob\2/�)�NX�ob�0$�=�Z�Ѧ_`�Ŏ���7^���q�n�X;�Z����<x^���/�c�d����xqГa픹�FV}9���7�}�Zc������)��/$#'|���'�y.���od5����/{�V�N�F=[3rL��yƱ3���X�!��D�8�8�۪�b�����3��1V�Ě�-ʋ�Gk;�tS�-��ڢ�<xƯv[ǒ���[?�m[��j;��q�m]l���:xƯ3��WCՊ����ںvS����Ԣ����_'l�6�B�H-�{�G�:�4��.���k�g�:c��q����q�Mc��j:���{��]L��h�u�Tm�BS�o���#N5�d���X�X�ak�����2�w[�C[匞'�j+OYL���BM�k)�^k<��c�=�M�0����붚�0�۪mZ����Ď[��f��w-�\K�z�ǚ�H����0"j��넭���o0��>�W�[R_��Ji�.����nL%�2S߲n��e>2�+m�uЭԷ����c��G�9a�XϽ�Y+����w�4�[�V�TL���w;s�L}{� ���?6�+moDt�^�Z��ʂ�tD��gΘ�oI���
�?4�+m��.FcUy�������}9c��%:U�Їf�c�-��_\�R*m��ޮO�v挙��� �j�����r�n������R�4�ۗv+����J��v>��#�e���1V�w+��ƦG�Gs�N}�OC���	ɴ}{�t}�*ȑ�Nw{s�L}�@͔�M7;�8�������6��n_�X��?��6��ٗƢ�����O��c�Yo��挝��C8���v�c�m�}���(c�^X��3<��9vX��x�Gxn:Z�n����7\x��f�;�!��`��6 �[�o@�$�ۚ<r��1S߀�ˍ��x�8i,��ޱ��b�/���Ϩ挝���Hc�>��3�5Iel���	�U܆G.������=�����w��U!�n���f;:��V�M=�f,�7t�ß��>j�����gk�uZ�ч�>n�ᜉ��Sc8L��������D2�h`j������p�B}��xکG*�j�;��S�}���XO�t�gLԷT�Vŕ�N4vL��K���,U�nE��Q�ZZ��%(�.���\�@}Wi�ͷ��n���-ׁ̎��c��П��h ������p�B}Oi�~�-|�@�I�P�T��9h,��߯�36j�
ڈ�ot�$����^m��b� ����	�]-Lx`=΁��ohKI��N�T�@��d]���֮3&j{
�XBc���w,4H�P�T�lnw�B�0S��P_^�P��-��C$��-���A���R��W�h�ވ.H�~h�{�ڮK�HjG�6;7t���{�^َ�L�����B~��2Z�=��"$��[q@����k���"�����ص5h�j�aT�|#"3����Y�`ʺ��$�ː����]ڐR����<��]� ���{unz?x���*��v$Y}B��M�\��E�?x���,D!t禦����2RMѰ`3��\���wOЊ�@[�=�ޣ}��-Ѳh[�U�`>�RY�BO�O�/�>6J��PP�jhW����W�ge]�19�_���C���q����Z:��J�Xg�e��ٻa"��ď�A�v*Y�"H��,��W���U*b
]XDG���t93�=�����pq�t�St_ N+��8�-���[�D���M/��q�c&�y�v���H)��bz�1ZU��&�. m�n��I��9^Y�RMn4�y��\�NE7�D���y����$�`�����}�u����0���:,�C��0>��4/��DtZh��Lm��0�a�E)G���w@Խ���N4V D(����>�'EC`,��5w@��"m�J�p����(�@�(��r�B���wMڵ�����DYiJ�$��;� �z
t
(:$4�*t��S���	DY]J+.��ʥA�u��YV�
	@<ꝶ>�geu���P�0>���r����"��6�j�&� "����XD��,�iD:�i���8�����E>�cm(u��(+Ls��"o����4���gu����ޘ'HYeZ���(b�As�R���Ay�K���H(��J�jv��s.��	HYjZ���.�#����k�j�A-��8�'(E���-�?y\J�- ^m�{@f���8�g(e��>o>ktm(uɢ�] ��С�fP֜��E���Fח���W�Ф�[�~�?�� :���?�X4I���9Y]f�#f�GU�C�>Is�1���Ł<)i@������@��´���� cO.���yR�,�W�<^�@>��.iM�+ ��G�������6����x����� �$6��la������5 Y��]�@>¨��D�@l��.� �'e�	�Y�E[F����O ��W�p��"�g(e�	�����1������ 	���D��hM �	Jq֒\H�,b��&@^1x�t�@����&�P�C��@>¨���DS��������5�G���6����r��HU�@��hHЯ1D�}W��,7ꚡm���	jg�&t_�*���8�' e�����m����d�Mt!�t��2_U�Y��gxEO�M��}�ǮS�z�Tڊ�ۛ���6�)^Y���R�,���4ѻ p��P�h�3��D��������NU�0@�5 ��sc��^Y�Ru�2��𪪑F�A�YUe������,��~��!X]}�md���\c�����]�����y�UU-�ڈ	�']cW��{WV5|��X�,��B��o�;h��H��	\Y�rw��}܇h��zp=����7��d�3�������WU��~�� ��U`�3�����]㗙����F�Aֵ�n^�oz\ђq���i����'?�?C�V�������gxeaË���������h5��VSt�߀��	^Y�jv���Pf�U�?�pei���a�P��{����Vk;T\��*����m�C|��!�6�N����t�;��X����3Y�Z(n4k�?��xz|O4q�h����	�:U���M�����KCwN*���;�	�:�ɑ�V֥��/����,C�C���u�{�NW�P�M�d���w�����;�'�LG�C�'�G�tGD�YȊ�S���R^�t�|���;�y�{��I��     t��P�4v'�D{���x�Nx�T����Υd���չ��d���+�� �����q>���e$-�)(b��'�ufi�A�X�䜰�,-:]+I�䗀������h�vWP���E�� �n?�i�Aږ�h@E��K;�+h�6?�Q��� ��Ed�D+h��5�ɗ*�.dk���r���!J�nHH)K�O��J���Ρ����zy�!�9}#@�[@���h��X�2���O�<��׾KR�D��N�\ ������F)��?�矿�����o~��_���U�C�b*�R���aTY�>�U�}�GH�nDʖ�IH���4���C�e)��]�EPu�5$G$��6��$�z�.93j9P/o�>F��`��T��9�P2	�TY�b���ނYUw��@em�*sT2��	RY�b�u�ޅY�TשD*�T�d��+�����Rmqٽ'���]���� ��CH�ⴚ����Q)�6�n;Y�T��He�J	H����,�'X%7d��Lo�>��kyGB�U*��#c�3��J�_�cT��8��2���G	�͂zU֩��[����j�H����w�)����Tj��b�j��y(O�L���������TY�
���AUU)����F�'�&���Q%DM�U�V�η��t�Qk�i��YD���U�U�&�t����Tv�P�ԡ�gVT�b�ժB�:����*���VRK^H��x󯏤�i��|U�>�u�8�*�U�ٿ:(]�f}Uw7hC��
� �y��$�gXe��-���aU���J,|O�y�$�'X%7	d��*��EXuK"TY�Z�d�� M�z�UV��`k�=@�����w�aI��쵲]TO��zՠf��!�IP���*Vk�#(vQ=�*V�e���&�#�:w�B��\A���j�3��Z�����MԇH�Va]�@Ԓ=7=���	VɃY��ԛ���^X�,V��8r�n���V���ޗcx�!Reł�*�N *~VC����zV�+�MW�dXU�B}�nQ�f)C�jW`�a��
X�?X/�>��?�|&�%?͠5��	TI�<����8O���j�@'����z����k��$�'`%{	�m~��2+t�c[CH2�@V�Z�$oW���e˧~�^ށ}�Uw.Dy�d,����a�'�����N�����?��K���/?�?Us�_����ʅ����p�U�/[gH�@ZH���8�4�gpe�
�nVI��>B��%ے�UiC��U��)\Y�B��H��}�VY��,d!�L��b{�Vr�@�R�`���C����zE���6�#d�؞���,�p�^ޥ}V���he5�Pʷ#M(��=�+�Y����������Ƒ�$���%M�j����Ś�`���C�:�gR^�Ei����il���Z{:p/��>D��"뒁���_c���b����$��vM�*��BuW��@��}�W��b{�W3�[::O�����ءƇ�@�����L0�����b����em�3!�he5K�;܇�-N��r���p#Ʋ|�Y�m�%��q# �a|V�=�+ZN��S��>�{�q�ds�����}f�=�+�^ o~�z��!\���h���5���tBH�wW�����k�0P֣q�b�pR��ܝ�S3�C�����p��_���1�Ց<C)W�K�̇jq(�GK�0&��D�H���E�d�'��@�g�t�� k	�YS���JY�Js���C��R%��B��!��"�zH��!{�~U�y�.�- 2��m�VG��,95��2��šT!��-+|�a����<)N��	�ƇU�����G��0�.5�8������Dѣ��cV��>YnZ�ap��<)�M�%�-�@>Ĩ�]�w0��PR:�Hj)��妵�+��(�T�t"-:V�kw���E�s�R���oS-��x��Ѩ SC��"/?)�M���r�!FU���hO��m�.qu(�`ʚ�!1�i��g�l��%�	W��a0O���JIu��;�kR�C�� J��� %���϶��v�A�?v�4�ok">�)zQ g?8/w9��9�RP�� �{ѡ=�&�g8%�Ξ��]��0Փj Sҟp� �Ǉm�ySR ��)����`�ѱ��<��y�y���NI������=·0�vP�"�n0��&�<�)�P�dx������`�2J��b����p&�{��a�j���WV�Pb��
U�h���E(��r�1J�56�?e
���tk6�<�)�P�-�'zˣ�si�HV���G!�m�y�SV�<m�{��a�OR���e(�F�#g�3����h{t�1N�5��d!�5���Ȧ :�)�Gb�pcƤ *�B��`�:"�U�󵃴<�'8e)�v%��<��J#R�!�F�+Tma2�Z�3������}��8u���D��,Pn�>�g@e=J���:�U� ��w��(u|���m������?��_����_~���iE��%����
�i`;*�Qv9nQo�>��3����%8�Cʼ�>�'@E��!��[�p��׀S����`��zT֤\]��}�S�)SI,ZC &H<�12��	NY�2H������D�;�"\�����݋Q8Op�zT|�_�YN�45��e=*)��k}4O`�jT��;�Ϸ0�Te��o.kQ�8a��N��h�9E�@� ��8���LY����ލ�y�S����yy��LU�L/�E����h���V����D5B<�\�f}6ݽ)┥�f�t'iy@π�ZTse���<�����$��!���0�h}�g@e9�-��A��o��c��dA�������Ճ����!�m/�����E� �٩��>�g@eQSiy@UU]2-����2˨<:*�R+>�vY6�QS$��J��0zega���?��������>��=��'v����,O��0f�K���:m��d�꾄�5+X���,X=@���}�ǀu�M��(�6 0��ȭ�u�O��@�a�8v������"VѾ!��n����0�g�eM�P�e�?�}�������C� ���5�����]x��T�ڀ��C���J����|�X�:$��ۮ�]�uZhEHJ����n���>,	 w _���ꎅ莂h���r��n{��>A,�9 1�k�hϼO�����%��Wz2X�u��!����;�/
�ǀu���5!) ����d�3Ȓ�r��qt� �O�D�H����e�O �b�k�>� ��$����x�itܲ.:��j��h�e\ttU���{]#�xG�-����!��<�'�ˎ����.�h(�9įM5� �A�/�t�.��g�Q�^��������km���,t7�A�� ��9�~>!p����m������߿�f�i������~SV5���0��M%�;Ţ�PH~�`�8R���?��������ж{�k1�ƕ�,��wp��=��*^4��x:�Ȃ[nh��߽t�����(�5�t`^�b>D�{j��l�hG��86�����O����?������@��x8~�v �\���3��8��ċ���J>�C��ED����+�|������o?|��_^Ǝė-4��9��'ogae=J�GǞ����r!}C�(�����L
�/���������_T[������K���̋��:���D{�xͰ���`��0eIʾDf�X��G���ދ� �p=���̟�]* 7�8Xv������l����*�������2SV��j�u���ޓP2"ZUD�Y����/��3��0� ;$_)��;ސ�E���D)+�?C++R��3#�W����IV���`��t���K5����>�C��IÝ�%Y�*>-8�P�B�OP��@YC�U�b�W��/I4��׆�I�6��̟�A��U#��M���ً�@��?�w�̟թ� �X敳�1a��}E��b�,�e��$K�꜋���u2�$��^�    � ��bd�H���Jr�� /���F�u�����y��o�M�r~�����/���R��>��w�?A)ZW$�ȋ)܆t�|R�[ě�^4�HW�RL�ٵA�t�T��w)bb�s���)���]�V'{x�<a:�)�P�Y�1�g׫3&]���^�� �
�ze��ʘ��ʚ�k���;����Z��qM,��(S�d�1����	��΂�6cRN�~zY�B����3��sE�1���&�`ړD�
 ,��� eL�heE
5��<mr&� ��ǗU)�3�c ��Hea��+e64g������3/:X$��3��_ӿ�?�~��?������;%���A�����8^d�G u��� �V `�E�^V�N��P���;�a\�)i���n$�Or=��2S:�+zW �/q�x�1ZU�����`�P�"Q:C)����(���h�E�
�l-��b�2Q:�(+P��aaf�+%U�A��X��L�0/*�<���B���!�Q���K��,HP���� K:*kR�\��7~�$�Lޭ�-ZW (H<���Z��P��@Y=�;_�����NEϊt-���c�X*�)\Y��KqpZx�1Z��@�|�,��%��,M ��{�Q�ꎀ�@��]�%��X����S��*��ċ������Y4� ���FV���{�l��x�T^<9�'E�VX?�YO��Rы"�D�X;[��U^UyЍ+т8S�s8���	HY�jn�����E^y,���E��DY/�j*�gpe=j!ŖXP�D^U����}& 6�8�ѯ&�RV��3I]-��{b��@��*�J�?A(KR�� ���� ���R*':F  hfcC����h������.�#�ʃ�M�(`C�,��~
T��R璴\�uC|�}�m!6��w��3������]ʇ u���R�h������dF1V
WR#��D�3�#������V^�~ �T��Y(�)LI� 3fcA]+���t��E��l9v6n�ƟA= ��Qp+%^=�ʋ�
�r�H�J�O�Jb���:�&o$񺺃�%ѵ`�rE2��3��*i	��E�^�u�4خm���4��3�!���;榵�:�n�/�C^4k ���6��Ӥ���(؇��(��������z>>�*K:AD��m|��Q���Ӄ�Ԑ����׻/�]�$��'����a>D�;����A�l ʘ�g�MV&I�e����a������Ҳ�D�z���Q�tVV��J�L�l�$�t_<�	�GC�&?=W��i�)RY�^
檴<M���8e]J9�>�y1�\�&� ��� ���$">B��;H(P�@ȇ9�N��`������r^�)�
l!ё!_s�ix��cZ�Jgxe9�ѥq��;������� z5 .~�|:��t���K��qR�=·0u�y}T�"�G3�se�t�Q֢���^�1UU����
[SgQ4J�NЊ�@;�GmR&��d:�	�G�ƞ��t}�t
U��]z5;�����*gƃ� Z3 h�A���,��$����/?���/_���O?��w�r�؞�5��z _�����w��%�hא���;n��.��@e��������V9E��,Y�*$)����NQ�`�JUc:0/�1�TN+�)�U->ļ���^Ѻy��{y��1\�56�h� ����)LY�j/)�MPu3��^h���W24��r�3��8�0� .2�C��b�ѵc��Xٞ��5�aǄ��Q~��__V�V ���n���A�թU,����n�2>��w�v���~���~��׿�W����ƚ��N垐���rp^��|S=�;�6�	�S�~���3��������3�<!�J�$w�EѮh:E,S/%��VE��͘Ã� 8d��Kٳ ����`���{M�m�]̇(u���9�^��0ΑG�(�?�+���&5�������&��A�w ��S�<����3���p���M`q�������h� �P1�ʣ�0�?�() �g_y �e���p��������(�?C+�����Y<m�|�@82����f?&������$MH�S�Ҵ��R7����h� ����?���)TY�|���-��Hu���k��(��ʤ��+����r�
M<�k+�x�_����Fo���ǯ�}���
N}��ny����o�������{�K|�+���\d��ذ��z���2X��M��F��3,C�������*X*KG{�6|�}.m���-�N���Ư��;�>��̆�UX,��h��0��)�/��`��R`�̚��i�U�j��O���a�������jv��C"���j�~�톰^;�?l���oW�Ǘ��ª���:�W������Mc�V�_��2�I��W���ōQ��T�E��P'�*�_P�^t�P�N��vү��|Z0��v����{+`�k������ �����c[���h��&����T"�C����@��5��2}����6&�Ȉ��o?��]�x����.J��n�{�p���W�bG�V���_�|�q��n(UzZ	�ϰ�A��x�K�����.ş�w�����]���SZ��q��hΕ���Ewy��?��7?���_~�� ��t����sD5����h�G�B)�y%��;_5����*%����L����{�%��z���~uJ��}�����'�rX���[񻒿��_�۽.� Y�ԥ�u mN-q��54<�G�m��o��c?����(���N:�h�u���{�9e|Y�k��Ũӣ-��zT���L/��O����o��Gl�������rC�{32�ЦV905+bɾel�����2�o�Bk�6�b�;�F����8�o���eΜ������=+��;��y��D��g��ޕ�˔=;_o���Ru�B7C"e����	���_�vJW�B�2,�D�E�VW�Pw�'�6<��ѿ��� ��e��?;�t1����>	Q����AWN�U)��}R�����]�jBա	��.�P��tB�����nc��(���ׄ������D'�Q�݅�����=eWo�F'Rjyl��:ݫ�D��&�zM���Ǒ�UN�Z�t-*:A��2�R����R�:i"ut�
!%Ĳ�P�H�S�Єg��	b��ݗXH�^u3��E'����zb�],��~��F'Q�2��P��
$�DuB��K��B�Tu�b��]�$$L����	u���.zA����z��14RM��\�^#�m��Vu�q�D�,H5W��]��gX�ˊTCe5����7�$�~R�D�I��Χ/�Q�k��;��')�(P]PJ�c�퓟$�(S���i�V�iu�F��$Em��ŖV9����I�6�:L-���;���v�I�6�kݳ�.��]G]�a&�̮�c�N:u�hfL�m���X�z�xä@`J����ȥ�vC��{����L�o�iĪ�Ƃ{R��;���g\�Yy�� �Qq9���~'��A֢ٓ�Z�>�е<�h�2Tb	|�\ϩ�B߼ @���k�|���Dw�i�$)[���vJ]K	��1
�1�Z�$w��C�Z��1
rD�m��mJ�k�R$
ڄ���api�HBt�OZ�QP%�,�T�Ńtu�m�u*�P&�$��N������)h���P9���(�V�����lZ]M�(��!lN��VWm�SV��z�����ҩ�o��(e�0�
T�;��rd)�k	�76�}�a��2�X�IP",շ�=�b@݋Z�~� > X}��M�^�~讫m��� dȾ�i٫!�sWp�L�� eu��H�$��u�ad�`��,�F������$���;��W������ ��p�f�|K��[)�Y(f'�$H�쇁e�	uWPs��9�ธ�e�J��'���J�á�%�n~�YV��ƾ�-��9���=�b�C��F�IWQ>KzT�����_F:/���|~���%!�W�8�؄Rw�N=�,IP����bi4�WU�	v̒m��9�F�ʃ"��Im�پ    /�]<�WWE�J%]B�6N 6�T�C4�(I��2�qqY��IwȎw�b�$��<�8\�ZN���pC*�`�A\�43�
#�⋤E����<�CU��Td9�845���^7u���c�)�0�̵U�Et�H�ԯ�愽Z��*��HJԯՇ�O΄QyPD�� d�L)�Hɥ�@�+�HB�5��cjD��B�*�z �<x�W��WIU����˃��	��<�]�J�����|���M�	-�*��<��&̪���*) ���j'�YUa�8VI���×�ؚ4bU���WA��C�МX`���
��CԈ8SN��������<�*R����4�e��Z�̺G�LA����7L uw��g(s
��i�Fj�u��f�MP"�m�SZ�;bJ�� IH�'�|��Z��J���&�R���b��Ryx��\�	){ô��<1�_[P$"���優z�N	g,�2��I��'�}6`�Y[��[���m��TX�������<;��S�$z��]�;B��l����pm�����/��u�P�<g�졶�g{9���_z�] �xu��Z/3�'��"���<�G0Ȣ;&�NW�}���V�8l�ɳ��"�"�~-���Gb��
#�?�.l�)��n�z�:Z �dm�[_�;$�gyq�_� +DҳP��>��-�LA|��X�.�%4ΔT'^�ɕ�69Gљ��I�쵰����bʪ���u�f����ty�Q��PGPY�B���T7��:IRFm����<��GQUC�"9��F�Ax1 TUCX���]���qt�rه�1�ԓ�l�BX Wc�J�����g�,�i�Qޡ+�:m��m���c\��"|��f��n��]�����m�Ξ;f>0/F���D��5�n��|���+3�Q���iaG��uɅ�Zu3�鷖%��0�7�*�hs��v�=���$"]�.5��F3Og��T�?2-Y��s�ŎTU�k�4;- h�f�4l�~q2RU�v��@�%�4l��U����ba�=U>��lLgU�Gx2�fÅ���4����s�f;��+i�vX ��w�7.�|s����Y�K��c_��[U5'>�H����}���sq�\U�MI��2�:�f^L�;{�{!iv^�0+(h���ɖ����TI����4�ʁ"�+�Ss��wܵIsUա�~*Ts=M1]��B��_�M6HP��Eje֬*<im��av�qYZI��5��u��6���z�V��D
��F��Ը�*�|iyʚ���a��s}��*?�U*�RV���m��	_�ىaͰX'aZ;��a��y�;fKm�=Wc�JO|A�f���5&�Qn����
i��3��BH�K�C ��JM|N�f�",4(�.�蚮���fv]�){F�P��&b,��&�ř�&�k�����l°Ӷ0�H����� FH�jH�c_��5��*��°QvP^�(U�DN��QV׏��k,�euMw�
4�/l�>�4����m�ŧFX���н����C������C���y8m`UU���ǰ���&j�#7U}D?�1l�5��Y`�`u�rx��fG�m�����]�'���5[2l�)�<I�jP��y�M}�ٓ�Y^#1��l��:+��4�3l�ե0l���5lہ V �|L��������N�������,����f�qvc��"�E���3�|'��D!&���
�S��Ҍ�4�1l����y4��4?8h�)�jcTgs���3���*/M��.�f�ac��5)I��'���"�r�^�qU+��J�aÆ!l<�K���Κ�*'��B��ԍ����ְa���
���<eeʥ��㸐P���6�F!vﹶ��%Q7���M�٨a��>�](KZe�k�٩�h��i��%��$�&�m��-6Z�}*[Z夳N��u���x�t ATN:��t�o�(�K���bJ]?��Jj��+����n��OY�J���������>�I��?��"z�!]�R�T�;��lܰ����']M�u��<q�&B�+����{I�����߰{�������ǟ?�No	�x�Ň:]�գ�@�v�vP^�(u�鰣�f���P�g��tW�/�V:{8l����%�-����w��l����i)�����F<Eu�3��b���c��*�S(���ug;]��*���aG����@.DԽ��mIV��!����࡫%�����[}��d���H�f3��1{��k��u�3;��gC�2y_�,-�T�ӣ�Ϯ%|꯷�_?��s�=��'���N��x�ފTg�H?�,E�_yn��nV���Ͷ;f90/6�Q�O?��E1]}�4d����:$�����!�nb	e��\L��� M nLB��R��}���a�L�N���S=*��1�y�z�p��9�ڦ�����g����F:���z�:��B�$	��e�<�ylG�u���������?��-<�'�N)hR�PxH�w�V���J
e�X�U
]��W�d�~�x�q����?�~�v�sҦ���0�J�X�j8��p����V��<��)�I�6���`�fB�ڒ>_ɳ��F��x�ɰqs
v�#��p(,�F��mo:���a��=�Q���)�I�6J|v�YLS�v��釟$i�L>�Na~���)�I�vBH�#��BB�%L�ܽ,B�B�mm�6gXe!j��ȈU���� Y�:VH\���N�ʂ�C��rPݭ<l�����������p'� (~������/N��"�����j<U��d����O���,����_�e���+O�u���� �� `(���ԛ�`k#��썐k�NXs�7W���Pu��	�k �v�8�c��T%�ח���X�Ak�wb��|�_��m�zT��Γ�_qu�6~ʧ�8Y1����k�o�5~�����l� '� k�x\A�G���dܦ�?z�7Ae� '�k��&�zT݇i�7�H����^��qq u7a�o����c���S���<a2W��h�������)'��$" �c7��4�]wcx�@&�_S�8�<�vVP�m$�IDv���ֽa��曼|��|�&�G��u�<�(�x)��{-ߩv�䟰��[Y��imo��'%!Έ?t���S�ޓg��s����=y&씩�����m��3a��57ޜ}j�;�$5D�`�6ޤ}~�{�R�iq�x`�}N�v�I~vʖG/�'7�'���2%�C?��EL�<vBH0��>��=�$�>�|�g6��
h��v�:;�z~�{2K�`3���������$a�>7.I�/4(>Fʓ7B�4����2��U�����:�1��N6	/��5���
q|>�'Ǆ�T�I�UU�R_mrMxA��v(���N�P'��6�&3R�[jtL�	;iw#i7#UN�'T.U/�~Dmf��S�D�\�^H�HZ�Hu���j�|^Po>*�MU�N;�d��BZFR�=U�ǿ��;R���Pu��m�ޑ�~�S3T�vB�#U����V�'�O�y��t�*�'wǶ6�䗰&����d~B{��#a'���Or+S�<�#윰�<������䏰sv�'�����6���A���5�&o��2u�yi����V�M	;mN��h�a|'������g�Mv	;dK��Om�Q�i�H� �b�7q?�9FO��d��¿�q\�~F�D��d��F�!��jb%{�;6�"���}�N��M�;l��i�M�l�n�T����4�����L�9�"��5���#[��ɏ'O����#�̏Ϗ��i���0g�IN�7�I�6�
�
���Ǔ��Y}���$=/=��^(�O�4���MF;e�6?�~z<�!��6�����Ǔ#�F�\�������a���'�C�H���s�C�)�9�S�Ǔ�`��_lxN~<�섐8g^����������t�~�d�>�2y �~�O� m��u������g�e2E�`{�~z��l�L~;hv~z"��E���o�,9׎��x��4[�b�L^;a����rB�'�OH#��0nc�8�S�BcVW&��2���mW    S�>��S&�������MJ���~yI�hP���(��,�v�v�V_���vqf�4�n)��6�Ⱦ�Ր�&��er@� �H�B�0��y@�^&���z^VƤ�v�[��v�����I�to�2}:�A�C�����$ݤ�2"�%�SX�<|�W�,K���%�t:P��'7��������N���Lf�Y!�P�
�z���j�2� �����A�sb��䄰vH��m�JZJ���B��\<(/6�JC���(�ds���&GRҢ���#ᅶdWYL�hu��a-�_�N[��}닳%%%JQ�Lv��ʋ���z!JI�p�BϞ�r]J�t�cK�s��Q\;�n5z�� # rB��.� c�1�(�X���m�#�X�h�Tx��yh�X��eH�&�6�w�o#���[���䱰C�Tn#�R�N���(�6:�M�ՂR4e�۞����Xo�Q&� M�s-��BZ�+�B)�&��p辚0�N�2mF�!ane8nOY��r���EHI��n㸚R�9�k�erb�(�we8nO�٦��L��d̰ӆ>:���*���:�Lv�+���.�:���3M/�}0�������L!B��ʐ�Ź��p_��!aK%�mser�+,iC�|6��p���㨃%��lv����n�p*a��ʂ9�8r�V�H�]I֥R�{�;��TI	J_��ϰ��U�z]�*��-;�4 g���`��z@�w�ɥa��6l��՞�e�f�;dt�6��S%�EI����@��J����ǰS<ce��ɐt�x��̦l�m}d
��1��HR$�m��[�@JJD�Ze��j����@�Pt�ZX(fs*BZ������j��U�H��l��F ��&��MC}��6�Zm���Qv�c���J!j�m�F��w������Z\o�Ϛ�>��1ɒT�c���8�>�}��^�a<�s�;%`�@J
���G��P9���e6Y �;L�!\�#���䧒�B�q\M��?E7 f��L����bi�)i�)Wfǅ���[Z�Pm�M#I������I�(%1JXz)��.���J�{~���F��O,��9%!^O(���FX�Kl�\�ͩIyf����r,�$��M��Kܳ��f���z�s�dH:�F��e���:ϒU�����J���>��Y���waㄯ)���>�S�!)��B��ݵ��-��ٜ��츰v <�P7����e� [K�pu��c�Tn6W�{�a�	��)&&Q��B�4J���1���6�0ȥ)��� y- lu!e��9��"*�A��b�;�V� @H�}H��ra"�|ӈ_��@�9z��0fUw#�d�����Rc�&���$Ul���z��˾��H�JZ)�,k�<KVU)L;�d�@�\ȝ}F�$%'nJ���6h��Xq��h!G��[�c�Չ��)IP��P���j>�YA�)�O�¿b���A���� J��>����Rw���䫀����Y(mR#-mAZI����4z��ꮘ�vV�Yh��CK��HZȎ��%�4S�,��)�� RJ���Z�Y�ř��0R%����z1aT�wS%K$��s8li����
��*+P�)E���G:ֈ����y��������*�BJ����s9���*+�g�K�o��Au6��R%o�ܮ�b��5�}u��(�P�ւ��k ��N�)���k�2���N�t�EI� 2��bY��Q�$K��3�P��GZZ̏$O�-ex�nJ�����V��v�~��ҤS��c�L���h�J
�	�{�u���ץ�@�� ��&����6#�JK���z��䊪f��]2T@ֆ��?�Mv�d���JԻ;X/��'
7�U!����:�x�O����9I����:�-�UH�:�Q�����چ6'|Pk3%a�oi� "�	R�� u9���2�ؓbs�x���Չ�3P$'�1����SWaӽΎ
&�l<�F)�r�~A��[�{1�ս���:�*l�͍�tv��	�3�"�Ti�L�3L�Q�V'="̎�<�¼N�GB4[*��"��0�S}A�> Y�z�Nh��UU�Fz9�*l���a�k�.�`�NY�:>و,�F�J�,Z��<�^��D�:X�3�!��hZ�sn|WdF�{_�'�����۹�kS' J�����G�o9��<��u�U�[v����0�~�˷����Ͽ|��o?��������Ir��'%/��g����;7xv��F�-��D%}J��l;��t%'^�������΋�����OI��	`��sq���ܾ{I�����2��=l�XJ��~�8j���&���җ?-l��%�����j����na�Me|��-���(Q����ňR����l��Q�/
_c�����:�.��kgǅU����}v\�{u���FU��&2��5(be?�Qb�;��oHV��{��սr�����@��/i}f���6{Y���s<�[��t�2���������u�;����O��>�?윱�[h���:Lڟf#�y|�j�yb$e�<b�³��������u2^��oϟ)��v��v���h�|��^8{�L3��d��q���)_'υ�2¯^n�����u�]�)�k�o�|��^hK�|��Ӈf�ɇi�չý��33�d��C�4X�<ydf�\vHȶ?�L�:9.�ɷ������ur[�	2z���:/������̬�	��R�l33��°�v׆�2�cff�l6Xk)|���u�`�A�k�zf�dy�`HPtt���|�	���|a���O��O�a���>5��<v̜jae�S��ɇa�l��e�y�����B���'���F��'�F�O�'�������'��N�Tz�&���^(�A��t~rc�)+֣�"���^k-L����O&;a����垟�O./��^�?=��l6X��>��g��k������ɏa��ͩr�j6?�2�����~���~�|����5����|�����傴�ِ����m2f� s�����-���H������"��ԏ�o��N	�M��m2:-mGZ.J/�����Ҟ�-�&g����4��6.����5mrgx���ņR?`�M;e
PбX.�?u��8�M�;a/�	��Q-�k�6�1�u���駒��xY�J-�XqФjm���&?������m`�2:%,n��)�l�=�F�Vg�L�44l�5��[���O%(EU��&�\�ק��G	��Nf�Mኾ�l:���N��6�4����宜G�ˎ� NBD� �yh~F��NG�iG��h�1�OH�Z�=~�d�)s˅�n��MD;)�F[B�Ś��p��ɨa���}�Ǒ*)qۜ�vʖra��jJ��m�i�(��=��^�{*	iS��^S.|"��{�JC�2&K��2���O,힓+�+D��h�$�Aw̵}���3[�6霎��}�hxA͙-R#T�Ii�dְ�V`�qM{>������߾���K����׏ꮀ*!)��$U��7��J���d԰C�%O����JP|��&�������B�f�_]�Tp�=��!��2� ��˾O�Ҙ!�+a��E�Op#�1[���A��g�i̜�2��J��n�4���J�|�i7B�cx�,��٧�i̎ᕶ�����i̒��'ۧ�ȉᕲ��&��n��$�P�q�B��#�P֡�kM�w#�%Y���-��_ϾҒ,F=����o��$+R��1�����da�OW��~%�%Y�Ѐ'�[LϼҒ$M��\h���3��<�R�ⵆ2�H?<��@�I�6���A����EaI!�`���q5�<)���C�L�|�ti�ĝ��O���8O�D���q�ѳ��<)�F{(�+��&H��h�M)�7� �ϓm�Ņ�9�y��&!�)�A��|��2|�^u|x>�-�Vdj���9��"�P�iz���|�e�Ũ�ʧ�独H=Ad?�o�D�,L8�?�x~>_d}�TM���ϣ�Y�pd�'y��œk�w_�C�Z�P�ӝ/\�v�Ke���g�%W    �DH���gz��*ף�����p����é\�v�+��t�+��������qk�\�6J�'����y܋*��~�~�l�V W��-�?G6��H�2�S&X��;O�r�T(K,�st竤CH�K{~6���:�~�lŨ�b�{:`?E6��h�)�.���y���,L!��>U6�Z�d}
P"�O�ͣ45Y�p�gj��0����r�9�1��pk��ş��*�A��-���_�p_����◐�٬ype��w%�]�6��������p˙�}�b�!�ه�i�`�p���^�d����"�n)�l�R��6���Y�$
�6�ԭLԡ����z#��o�ӌ޻��V��È],��P��6Ym�t���%��AZ)�'ʄ���?�¯Z3���w�Z��-�Y>�R{�kpO�]V�����U7�K����r1C`y~��p�SD��.!�����K�;Y�b���` +H����N���H@�s7Ҹ���%/v�xON���;Y���hr��-���:��r�)ʫA���WLw����@��2X���m�G��	
��%���-�
�3�1�	��%�4=z7����d�t�N8�L>M�!�|ѭ|�ٝ rH�fc�F�����^�=���s����w���#ڞ7���^o�ӽ }��3���}�� '
��qH�_[����-�{A�;��>���Ջ�����s`3x�gN����R'1� ���፴��*W�K`�#$�z��e���}����8!��x��I�>(����� �]�i�%l�ޑ� K]�8 �-g�^m��äq	�)Ǜ9զv@��7�oR����؛l��]��äk�������9I�Y��0n=�����m�0��F��D�Q��	��&�#|DM|e|����a��$n����ۑl��P��m�1�a������ e��m��s��s�nC=Nb�a�R����~Ho�eY˹O�a���-�z�u.Wؑ;��=���e���8��I��D=����;���v�e�+�Ok�c��D=�bWb�� C��7v	��5�����}����.E=��Vr��+�����&Y�J	s�i_�r��$o��si�X�iuQ��P{{��a�k	��@y�b*�[�_�иNe���~���loz��!��H��WO��U����-�UE�îF���}���0��T�^��$Iր��6������W/i}K�W��L�^\���7ݐ!�b�(��igI�:�)��J��J�=�?�YV��VÊH�/!�Ȳ��T���TD�n	�feYޠ��m�S�3��U/�އ&{�+���	H���.����c���K,�=Bֺ��u�S��;3�k=�2�0[c��<s���^��Y�7 }���͋���K�o߳ m�����OX��n	����8y��tq�U}|�܋ l�g�����:��B+�PG��6F�Qi{T�w�Vh��S��M�l��Ge��V� pH����ڣ��C�Q�C��G��l��GU��C�"HB�0��:kW�%�e,�Rw7�va֮�H���^dE�P�c��
Y�*��CV���$�FY�*�!�*�d9�{������&�,z)�̄�(eW5M��j��ҥ��if�B���Qe�K��:�>c�5M�����Z��_�f�*ì`I����`�\V��U�%uW�$l��pF�p^�I׉�
�J�֯=ßM�!]��'];�Q\%eCʶ��!��Y���26z�-���Dep�/��'ݥk<��MP<����ҰIۓ��C�?��qD[��7nG+[�������C��n,�k���<JĖD�(봿Y'�Iw1�.�7A���/�]��']�h�
ʆ��ͫ�0uWŔ�nv:ـ[u�o6���}B���!l��||H�tw��1��w��큶Iޓ>��MP6V�Eq�c2!����V(|�E�ي^��'�����e�.�M�>{WE�N�f?�����𼺮N�U��K̳�����G��PX��^�T��y����j���z}x6�gg��]��pU��]�AK����-�e��S�Zn6<��K?�_�Q��ZR�d�>�`k��G%���Z�����0S�Z����Zq���$m٧�l��+9"bKB���7?�����vU#���
�a������X�8�QyDm�vU2	����VS<X/v�sҮ{�haȢW���l���hlq����<-�I�u׾`���,tͥY���+_�8e�k���.�	����2�F܂�E��6�iDmuήJ
nh���X��V���G�]N 8\]�c��rv�YgC᝽L6���n�j��랐lkA7��uZ���j>���1�d�&gWv�:f����[#H;X)�:��@� y@k֗�b�6i��?X�� nD٦�l��ge���C�ǮD[��g]�J����f�k	��]S(����M6�\����0m׵NP;fo�R_.����i��e����~f��]�v$v��	�6�7�J�u�)R:��$��k?���I��߶d�!MK�<iϪ�T��Sr>���w���8}qҞu�(�8�$l��a&�Z@aŪ:Q[D%I��N����]7ہ�*I�2���zH!iW?��N25����[�Jڋ��5�$sď~�֌�v��)�� ZI���HfK����{z�pߐlO?�c�x	�ڴ]i<�Q5$��,a��]O)��E�c@+Y;��e]�t��,k���S�,�v�S��d�K�e��t�%d�.;��d�E�8��,�^�s�m�v�C��kXr9A����c������u�@U��z^��+��&܁%�MS����*��B��Iʰa�������]y/�"+hfЛ4�XK(�Z�R��
����e*���]׼�c�؄(�Ay���w��ƽWr8��ӌ�a黪�W)Y� L��0��u�5}$�­���a	�ξ'`�!ٞ ?�ט½8�׭j�[�d~����K�a�N�u��$В
r��r��]��+_�a�]�>!���a��#芁�w��)�6Y�j� y��N�U�>$���^J��A��
�EᛃM"_U������`���䫮��i��e��~п.��|�5S*�3K(HZ���>���{�!�J��J�{��Q�����}�f!9� !�Pu��0`_U�~E�\P�8�8N�'��B��/���ï?���߾����DwM
��%�UU�7\���	�8G؈wN�u��:f��
��5�ճ��nh[F�,O3�ZX�͇/W��.�"��)��,��+Ӫ�dT:���({&�P
��*Ѥ��
Rg?STaZU��m�d��zFui�]�q�OH�(9^A��5�Aui�5�q�K�(�_�O�F{mYZu�I��%g�l��J��~�4C2EA�ބ�+J��6	�a������.�	��T�H!a�|P���8t���e�m�aC������4/���BO�QQ��4��\R6����RU��$O2KA�6,��5��&U��0��|Q��
ڼ&m�nŒE
����������?��W���a�5�Րr/�l�|~Ô�.�����RL!���
�j��QrC�0����񚪛�JB��w:ާ�	�M�i�X�vM��RXL�HMk����Oa</��	y�&擒)
R�0���*��΀��$v��B�|iؔHM�
�h%uC�x�^,i�`�Z(y�7
�g;G��^[!5�,���)S^P
R����I�(�`m�خ+����� eeˡ�;�]���wd����SL-
�[ط�CrH!X)�R 5UyO9�䔂�%O�צ>j�Bc�/�6�̵�R!]͏=6�&���_��������T���C|m@��bx��g����E�6!��ʥ��ӽq���l��#�>.ᵈӺ����!%D��mC�%�XT�N��n�x��4~6IفS�,�wj�����O���2/������O�!ػ����u�C��7������>��O���=t��$qo���x�-Bo1�5Ѳ�ԍ0��sX��P�s$ڢ;�چs��������(��o�����h'q�i��k�+����-�?ۥl�*9.T�G��d�� �  /�_n�ϵĦ�JCI���죲���b�+�[�m���B�m��p/-��.)
xt�g���y�m���3W�W�,�%t!��*���W���e�+1���Ѩ��1G�C�e�n��٨S���H+�_�I�!>�����D�e5,�����/�6��oi߈u ��De��s�?���tB�Ͼ*D_��Y��?�(�ק�(eū.㕔�:�'J��Le��Ҟ���rKz���7��l���
����g�^��(�쥒����5���W��l�����6e#찫�#��7��}��j�����KP�.Dw�Z��!p��cb1��ފ瞧���ce�/q^ŋϣ�j���]?{�씰,2���y�n�L�ds�R!�2nl:�+������*�0��[N8��@'��f����s�q�X�2�	3;�l��_������$��U6L�D��XGw�����he�.��߹z�i���6<;�l�5�i��U�ʗ@�#˺Wz��9��:[
��Es��?7�3ޮ���KcvX�a���}�oם@RGh�X���0��%�K��[�7x�l��C��´���P�:��쬲!Æ1%��ϻ��!cKevX�I�.F�Bj��)��<��l�=
!^|����c�9��E؉m/G�gZ�����{.�.}u��3��l��v߇�����i�d'�g7�������bz/A9�����=e�M�����a
�쫲��yXe_|��6\�:�]T�>�����G�=��t8��Y%o#FB�a�Ѯnڰ��y�Y���둯��]��-ڂ�m���Q'��q�ۧ(� �'?G{���n�0]v�MVv�4�~Ĵᨛ6��dY	[�slם�j�c�?���u�a����hO��T6��{���1Ǥ�	����F+�ǝ�eA؜��F��H;?{��yJ�>�T9v��pe�O���="U��%�]UvHA:l�Hu�f��ʂeӑ|��jˏHu�f����֋��tTNm�B,�]oC���tT�k%LY�zK�^l[A��������Ș�      �   =
  x��Z]s�J}V~ż���È�)yc���ԭڒA�I0��C�_�=H|K�Mm96f�C��ӧ{B]ke1�&S�|���e��[�~M�𹯕EslB,a�y��/��J���^�����^J�y�B\u����1��Ѣ���9o�����z�2�>���|�X��d�]"�DUɡ�˗�J�WM���)���=h_�XcJB�����x4P�w�8Q��T���������j�+g���7D�_Q�f�)�rD	慚WET��/t����U�_��h٭W�(�ْ�Vf6��t�
f����p�ݞ��Ry��� ��1 �~��K[J-����z�|����T��Ē�R�&!�
n��SQ�ծ{���.�%,���}�ʣ�U���b�߭��q��c��G	5y?�IʒHK[��nʈ2rh!!�ܦd��X_}�;a:����z�r�;�$���q�m�Ե]7?s�;�Ns�G��KZ*�D�jv�F������G�@�	����I��8����	;''M3bw"K�gK(��(7K�����*�u��U<��E�c�q��q��?�	<	���ǫ���
ߎ����١jb�̲H2�,�-K�Ȣ4�Top�G��Ė�FK�!�1� �X.SI��1�\�'�6	�^����(�%ۆ4�#��3�����Ğ�{>`���
�H���.h5���$�|�>T7��{%�
���G�z�:@����5�M����� 7���L�$�)�P�k���@cPB��Spݩ�9����Zr�����E�U_tM�S,�[d�Yp�'b��>g{,��ׄN�h�-eh�����p��[�����Q�j��`��\���x9��l)��)�j� �<+�T����o�@ �@�q��@&����M	+kԠ�ƈw|�_Ƭ7ʐ��J�|E]�廕#ruqOi3��
�E�Z	�ׁ�����H��7�L��[�iܨ�~aBg8k�ίP����)�[�(�I�{�9�7�� V,�o's9?Jo�-2��F� �]�8��n��S�o<z��B::�URDl��t�c�Y>�U1�o�ڹ:���]iq��b�`���<[j��7���^�
:<�bl��CG��Ar�y86���?b`+9;Ⱥcb�x�y��9�1�x1�����pYҐ��s��BkPB�70�i��Or*ý�5oT�����?�����V5��������/�w�S�b�O��(q�8DУ�%.���Rb��tr.�R��`�����!�~}w&�M�^�~	D
�H~3|ϦH��b"�5s�T[��.�U��i�AW�d����'ր_l8Q2��q�	d���UM#%ƌ%��d����~X@K_���^ߖ��4!�!��_ ��9��g��4�)����b6z�L�o/=��;�@�e�`��)�z��i�V�{Y����_�X@Pr m!��E;�iyԋ�9˛<$�B�.tm��x.6p���#�͘�n�\=���p#�`��� W^GO�ʖL1�l�ED1"���L�1ئ�N2Td�z���x0PA�Y�u�Q���+,��A��Cw�+�W���J ���:��+��<m�+�<E����0(:\�Ɓ}��� �y�SP鈆����l(�w ��p6�,�����S��2�9��x�L%y��Q�x[f�.���y8]��8�@�7�q�>�T�%��X��q~�-��t�����Mu$wS�hQ���sC��3��'�^���H�c��҉�{��3���m����酊u*q;GP
gC��̩?�`12�>;X�fW�1�bo�㐂��¶А_���q0�R`��o����(�0�{�����H�b:�p�f䅓�li�l>�o|x1��7�t��2΢=�E�.䏒#aa�+g��x��dރoKM�J��)�
��ڝ�z �����n�ed��UK�����\vT��3�eͥѮ����
h��c{킊�a�s�2#�p�I�1dh�3y�jr�a`c���!���H��#l��{�=LG�� ��6za�dN��'���`�X��{�:���ߍ��x���V�/��3���X�y�<�K�/��yŤL ��Z�t�m#-�h\v��73X�])\���[��>^~V���,ʆ��h[d�EF�&3WƥW�a�x��Q䠠XK��#�0c�9���nB
+BJzU`�[�����b����ҵZ�
���l�
β��*��M~��+8C	�x�����f�]]�@Z9��}���q�c:��E 3�ѽ���t�J�b�l��~�Ld��b>����>�q4nr��n�����j�uB��|�����e��y����N46��[у���q�<�;&��C3Kl�&nT�f�sń߱���	G���}bN�60�3m�'����_^�jN�Yٻm`�����!��W�;�Q��h���8uݐ}�����V�u�]��ST%{>�{�IO�p�=���P{�3����n�dDB���w�B��^XA����q/�[��4>��si��,��뭫ԩ�h���N���
b���,�0t^�|��q���=(�Sp���0E֫���k�v8(���`�k0xp� ���?}��?��~       �   <  x����N�0���S�2qZd珛�6T�h��!q�-����6��u�ꡮ\�����8��֮ѯѝ�tQ����c�꾸�χw-��Gw�q��_ǧ����kX�eH��4���ex�ux�=ު�B>��'���O��)��ҙ�W��T/��d�/�3��^~Rd'|y�Q^�1.��o������T�?e{h��ķ���T�g�j�N.���Ff��tZ��'�r��2����V��K�B~q;�8�c?�E������F��u���jƲCA5u�o���*�[-��~/�%UXp8�]ў+<��R�F)����      �   �   x���1�0��>E.@�؎1+Bj��SO�DJ H�}/O�_��� C�#N}���eW���9{� ���L!4��P�DԳ5#���aʈ�2�!�.bݣ!m��D{D/b��Nr���>��A�'m��I�D���
�Y�      �     x���[oTG���_qg�N�ΩOd ���e��H�bXb�<�������wp7���KBR����Uk�[U�ys������-{���?�R��'>LG.=�.ׇ��y~�h���˷�����_�0/���8�������ɓ�8?����7��/$G]�7N�#L?o�d@�.U@-��>eڸY3�\!�� ��	j�+Zٹb&5̌0cŬ����ы��?�������雳ɥ��'�@݃{Ġ�o�`A���vV�ZU�ъҮ5m��d!m+HؖTMʈ R��ي=��1`X�b�cCI�*fc� Ib�+��ԬȆB�� �������tv}q���}�?�b�5��^�A�'�%)C3��E����׍ա٩��uR�f��Q�FǼ�.raǻ��jc�Xg�S�f	Z�7eh�f=k��Fr��Dő�U�q�+��l�&��䬊����qB��}/�m��!�Q�B���@���ಳU%��0!4�Tť�*�²��n�E������� I5O��Eֱ�`��EF�"��.0�Z���XI�"��4���N�e6�������6qk�'����b:z�,�sص��HB��Q��Tk�u�=��D�%�y�.0���ʸ,���-]d\����<ڜQWEݬ����H����W u��rI?������4�|�x{~}�iz~����sřI�qޗN �"�f����Әq`�t��8 ��-b0��on�bƁ5�[dF�`i�oF6�[w܌N�_lD�利U��8D�9�/#"�l�`���dIo�"n�{;ی�֬[iz%"Y��s�A�`P�$�=�a-H�5��Bāߢ�C,��S�G�+5��goΦ�o�MO�?����|j�$rN��N�����%,�ٺ�q+x�F��2�g�t����f;e�s���3�{[� O9dx8� �ox&z�w���Y#K-��޶m {�R������R���g��-�܆?:����w��JB���i�F�\|��2�	>Ӿ(�e����l����]|֗Y�x-�q{&��]����q��~k�>|<f�>���N����ȹ�?���#b������W�ˋw�W�4�|����G���0,�=ٶg��n�FXg���(���( 5/�b�g�3
�OsD+��-�hE��t�(�b�V؅qG+
H�AQ`���GZq��Ag�M��#Fy3>}�lI�����E��u�jѾ�p���"���L�à�Gz�62R�$��o�FF2's���H�dr@8�g'ZK��gmd�^If����H��║�Ls�Υ�����>E�^J�c�}��޾�l��i���T��x�&�c�*�*v������juh��.��|�Z'�Y��+�ul�5����ӗ5��D�&S�fWE�ٗ68ӵ�ۘ2��ԥ��L�Me����tv���}��{�t/U���.�����&��'����6᥏��H�O	LCQǦ�9�6��+���P�,	�n���-I�O�[�d��/��{��tCS��x�f������&��W/�>��'����9/���OaK,i쉛ZK�$��?=��bv���=�W�ex��u�/������D�^
}!l(x�
�dǈ[��w��݇�>wK��ڿa�����mx��i�s�	�ɶڃh�y��}G�<w[��!5K�!�Gl� 7�O�z�d���o��|y]�Ӷ��j��͇ϲ�#����(,�m�
7�}�]�[�
��ه��Ͽ;�{h'3
l|O���[��K��E����hg��mL��o�!�W2�%�{���!~�y��A�β��^���iv,PE�SbG���=��1��`d��V;"FX6�MC����>��~�?ٿs�ܯ{���F1l~4��w��S?�E��]s��]���|�%vb�dr��*�ۻ���n��d�n�B%n����eqm]��T�敿P�[���,OB�ֶe\��ӯ8�C����ӂ8�뙻�N?9P	��Y��ˊ����];S�O�W�O�n"�o�p�uQ�'jgMnvq��<���Fc�4����������u	um�ô�o7�}��ҎU>�G�T��	u�q���U��WJR29Y��=W�:���l��m����v���˦݄��R�f�or{�X��"5����oF{�s�~l��p�V?��G������)�Fc��y�05�%�[�^�����A:C���(y��X��z���%~�q���(���\9yE�Z�<:Q-����h�G���1��Y#�_ƭ�i�O|���̥=@9@��a
��hKf)�а�a�"E:;�d�����8N�Y.�y����ϥ�λ�3���$Ct8���1#āE�s�- {�ȿS��_@n�����?����Q��u����L|m?0e�}�:���O�҇����� �C���o>��+J�>$9r��P�"�m��k�c=�$ӽ��/2�^J[�A�a°4N���[yYC탦)�x��E~�ǈ_�-Dߖ�^��غ.��b�X���ڇ�#7&äE5%���|(��O�Z�%���-u�L��#"{�*���+9�����Ԓ7�R�X��[]�Z�X!Vd���PBn|��=v�[~�ͅ/�8�� S�c�)�x��,[y��~�%2��Ĭ���[J��l�&���[�0�c�?-�,ä��]��.k�c}�S�CB��Q>V�^۲�Q>XH��g̕�v2`(},�ʲi����;&&~L��'��[)'������kZ
 ������+2��v�	\�m�'��5pE�Y�Y^yq+r��{bᆆ�O�~��l���n�=�Yg���%�ܔ"�2�$V���kJ�.⬬.e�+k�;�bh�7��x�E FQ�h����-"#\�"�����������{��d���J���=��|�*Ӊg>#���ܼȷ4J�3��f����*#[vZ�2+��]<D�32�~��hq��4�L���Li5C��zR{5Snw�����l�Y�RY����� ��EYco`�l�ٮ��N!�S/���Wh넖q�C��K�_��
찷w���-���k_ ����n?��]#�t'7�A`W��h}�dz�+���e���s�e�RB1�
��f�(�t�]:R�Y���2�<*�)�T���QyM��led�:�),ɒ���%`5�o�!�Ma�,̘Ħ��ȶ���[X/���6���.ǈ������d��0݃�sf�q��2�L[�.��xC���԰+2�s2�i�i�X�2��F�Ӱ;2�<�4&���d�f�Mi�ݔ�se�W��Of����x�����Ey�      �      x������ � �      �      x������ � �      �   I  x����N�@��ӧ`���3׶����`�T��li)Ђ��e�[�h4hB���_�L�����x�z>yH�CJΏؕf�3\�x�������J�8�х[lD})�j'��f����^6�q��7㎽�tQ��^�h���]j�<�MQ7L��Л/Q~/E�&��Y	�p�RcMrƄȧ[\1�����\c��{�cd�a�� �^����(���ia�q"n�B�5���leԸ�O�h��j�]��9��nρp�$7��]|�dO�PIXи%�ٹ4`,"@-�����I�iph�N���YR±
�ݳ��0�Ey{n
�      �   �   x�3�,H�NI3�/�H425S124300P��4LK��6I�2�Rq��6�+����O�5�,-��ϋ,���7t*6IwJ-���	�I��4202�50�52W04�22�2�г03477�r�p:��f�q&�H0�������,.)JL�/��+����� �Y."      �      x������ � �      �      x������ � �     