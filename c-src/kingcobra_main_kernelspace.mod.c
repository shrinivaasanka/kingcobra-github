#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
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
	{ 0x1b24d8b0, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0xabcda7ae, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0x4c4fef19, __VMLINUX_SYMBOL_STR(kernel_stack) },
	{ 0xfa8ad6e7, __VMLINUX_SYMBOL_STR(kernel_sendmsg) },
	{ 0x779a18af, __VMLINUX_SYMBOL_STR(kstrtoll) },
	{ 0xf0d24d50, __VMLINUX_SYMBOL_STR(sock_release) },
	{ 0x333422b, __VMLINUX_SYMBOL_STR(filp_close) },
	{ 0x59e6046c, __VMLINUX_SYMBOL_STR(sock_create_kern) },
	{ 0x85df9b6c, __VMLINUX_SYMBOL_STR(strsep) },
	{ 0x91715312, __VMLINUX_SYMBOL_STR(sprintf) },
	{ 0xc499ae1e, __VMLINUX_SYMBOL_STR(kstrdup) },
	{ 0x6f592242, __VMLINUX_SYMBOL_STR(kernel_connect) },
	{ 0x50eedeb8, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xb4390f9a, __VMLINUX_SYMBOL_STR(mcount) },
	{ 0xc5fdef94, __VMLINUX_SYMBOL_STR(call_usermodehelper) },
	{ 0x952664c5, __VMLINUX_SYMBOL_STR(do_exit) },
	{ 0x37c3e76, __VMLINUX_SYMBOL_STR(__gcov_merge_add) },
	{ 0xdb7305a1, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0xdceb3072, __VMLINUX_SYMBOL_STR(__gcov_init) },
	{ 0x133375cb, __VMLINUX_SYMBOL_STR(kmem_cache_alloc_trace) },
	{ 0xd93e4b5a, __VMLINUX_SYMBOL_STR(kernel_recvmsg) },
	{ 0xe553410a, __VMLINUX_SYMBOL_STR(vfs_write) },
	{ 0xe914e41e, __VMLINUX_SYMBOL_STR(strcpy) },
	{ 0x6b7f0b64, __VMLINUX_SYMBOL_STR(filp_open) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "B8DE28FFE00EE1C7B0ABD5A");
