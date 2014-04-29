#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x8a9dc593, "module_layout" },
	{ 0xb1278c61, "kmalloc_caches" },
	{ 0x4f84ad10, "kernel_sendmsg" },
	{ 0x779a18af, "kstrtoll" },
	{ 0xd3fc9f1a, "sock_release" },
	{ 0x143054c, "filp_close" },
	{ 0x794f5965, "sock_create_kern" },
	{ 0x85df9b6c, "strsep" },
	{ 0x91715312, "sprintf" },
	{ 0xc499ae1e, "kstrdup" },
	{ 0x8648556d, "kernel_connect" },
	{ 0x50eedeb8, "printk" },
	{ 0xb4390f9a, "mcount" },
	{ 0x952664c5, "do_exit" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0x68d4fad5, "call_usermodehelper_fns" },
	{ 0xac518073, "kmem_cache_alloc_trace" },
	{ 0xd206e501, "kernel_recvmsg" },
	{ 0x51bd0a05, "vfs_write" },
	{ 0xe914e41e, "strcpy" },
	{ 0x95a608a3, "filp_open" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "B8DE28FFE00EE1C7B0ABD5A");
