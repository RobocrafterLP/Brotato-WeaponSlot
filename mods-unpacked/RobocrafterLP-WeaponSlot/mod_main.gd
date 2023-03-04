extends Node

const MOD_DIR = "RobocrafterLP-WeaponSlot/"
const MYMODNAME_LOG = "RobocrafterLP-WeaponSlot"

var dir = ""
var ext_dir = ""
var trans_dir = ""
var ui_dir = ""
var menus_dir = ""
var shop_dir = ""
var singletons_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", MYMODNAME_LOG)
	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"
	ui_dir = ext_dir + "ui/"
	menus_dir = ui_dir + "menus/"
	shop_dir = menus_dir + "shop/"
	singletons_dir = ext_dir + "singletons/"
	# Add extensions
	# ModLoaderUtils.log_info("Loaded " + ext_dir + "main.gd", MYMODNAME_LOG)
	modLoader.add_translation_from_resource(dir + "Content/resources/translations/RobocrafterLP-WeaponSlot_translations.en.translation")

	# Add translations

func _ready():
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")

	# Difficulties
	ContentLoader.load_data(dir + "Data/Data.tres", MYMODNAME_LOG)
	ModLoaderUtils.log_info("Done", MYMODNAME_LOG)
