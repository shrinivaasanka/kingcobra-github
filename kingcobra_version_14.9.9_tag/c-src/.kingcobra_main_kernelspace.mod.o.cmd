cmd_/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o := gcc -Wp,-MD,/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/.kingcobra_main_kernelspace.mod.o.d  -nostdinc -isystem /usr/local/lib/gcc/i686-pc-linux-gnu/4.4.1/include -I/home/kashrinivaasan/linux-3.7.8/arch/x86/include -Iarch/x86/include/generated  -I/home/kashrinivaasan/linux-3.7.8/include -Iinclude -I/home/kashrinivaasan/linux-3.7.8/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/home/kashrinivaasan/linux-3.7.8/include/uapi -Iinclude/generated/uapi -include /home/kashrinivaasan/linux-3.7.8/include/linux/kconfig.h   -I/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m32 -msoft-float -mregparm=3 -freg-struct-return -fno-pic -mpreferred-stack-boundary=2 -march=i686 -mtune=generic -maccumulate-outgoing-args -Wa,-mtune=generic32 -ffreestanding -fstack-protector -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_AVX=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -Wframe-larger-than=1024 -fno-omit-frame-pointer -fno-optimize-sibling-calls -pg -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack   -I/home/kashrinivaasan/linux-3.7.8/lib   -I/home/kashrinivaasan/linux-3.7.8   -I/home/kashrinivaasan/linux-3.7.8/include -DDEBUG  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(kingcobra_main_kernelspace.mod)"  -D"KBUILD_MODNAME=KBUILD_STR(kingcobra_main_kernelspace)" -DMODULE  -c -o /home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o /home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.c

source_/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o := /home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.c

deps_/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o := \
    $(wildcard include/config/module/unload.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/types.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/types.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/types.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/int-ll64.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/int-ll64.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/bitsperlong.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitsperlong.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/bitsperlong.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/posix_types.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/stddef.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/stddef.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/compiler-gcc4.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/posix_types_32.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/posix_types.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/const.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/stat.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/stat.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/stat.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/symbol/prefix.h) \
  /usr/local/lib/gcc/i686-pc-linux-gnu/4.4.1/include/stdarg.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/linkage.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/stringify.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/bitops.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/asm.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/invlpg.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitops/fls64.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitops/sched.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/arch_hweight.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitops/const_hweight.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitops/le.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/byteorder.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/byteorder/little_endian.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/byteorder/little_endian.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/swab.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/swab.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/swab.h \
    $(wildcard include/config/x86/bswap.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/byteorder/generic.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/typecheck.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/printk.h \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
    $(wildcard include/config/hotplug.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/kern_levels.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/dynamic_debug.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/string.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/string.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/string_32.h \
    $(wildcard include/config/kmemcheck.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/errno.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/errno.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/errno.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/errno.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/errno-base.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/kernel.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/sysinfo.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/div64.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/seqlock.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/bug.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/ia32/emulation.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/page.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/page_types.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/page/offset.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/3dnow.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/getorder.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/processor.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/m386.h) \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
    $(wildcard include/config/cpu/sup/amd.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/vm86.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/ptrace.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/ptrace-abi.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/segment.h \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/desc_defs.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/kmap_types.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/compat/vdso.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/pgtable_32_types.h \
    $(wildcard include/config/highmem.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/pgtable-3level_types.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/pgtable-nopud.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/ptrace.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/math_emu.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/sigcontext.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/current.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/msr.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/msr-index.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/ioctl.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/ioctl.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/ioctl.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/ioctl.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/cpumask.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/bitmap.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/special_insns.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/personality.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/personality.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/math64.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/err.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/irqflags.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/ftrace.h \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/atomic.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/cmpxchg.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/cmpxchg_32.h \
    $(wildcard include/config/x86/cmpxchg.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/atomic64_32.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/atomic-long.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/bottom_half.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/oostore.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/spinlock_types.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/spinlock_types.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/rwlock.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rwlock_types.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/spinlock.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rwlock.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/time.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/highuid.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/kmod.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/wait.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/wait.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/nodemask.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/notifier.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/rwsem.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/srcu.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/preempt/rt.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/completion.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rcutree.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/jiffies.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/timex.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/timex.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/param.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/param.h \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/asm-generic/param.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/timex.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/mpspec_def.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/x86_init.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/bootparam.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/screen_info.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/screen_info.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/apm_bios.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/apm_bios.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/edd.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/edd.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/intel/txt.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/ioport.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/ist.h \
  /home/kashrinivaasan/linux-3.7.8/include/video/edid.h \
    $(wildcard include/config/x86.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/apicdef.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/pm.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/x86/f00f/bug.h) \
    $(wildcard include/config/x86/cyclone/timer.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  /home/kashrinivaasan/linux-3.7.8/include/acpi/pdc_intel.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/topology.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/numa_32.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/mmu.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/io.h \
    $(wildcard include/config/xen.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/vmalloc.h \
    $(wildcard include/config/mmu.h) \
  /home/kashrinivaasan/linux-3.7.8/include/xen/xen.h \
    $(wildcard include/config/xen/dom0.h) \
  /home/kashrinivaasan/linux-3.7.8/include/xen/interface/xen.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/xen/interface.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/xen/interface_32.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/pvclock-abi.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/xen/hypervisor.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/io_apic.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/irq_vectors.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/pfn.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/rbtree.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/sysctl.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/elf.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/elf.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/user.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/user_32.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/auxvec.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/vdso.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/desc.h \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/ldt.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/elf.h \
  /home/kashrinivaasan/linux-3.7.8/include/uapi/linux/elf-em.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/kobject.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/sysfs.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/kobject_ns.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/kref.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/tracepoint.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/static_key.h \
  /home/kashrinivaasan/linux-3.7.8/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/export.h \
    $(wildcard include/config/modversions.h) \
  /home/kashrinivaasan/linux-3.7.8/arch/x86/include/asm/module.h \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/melan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
  /home/kashrinivaasan/linux-3.7.8/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/kashrinivaasan/linux-3.7.8/include/linux/vermagic.h \
  include/generated/utsrelease.h \

/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o: $(deps_/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o)

$(deps_/home/kashrinivaasan/KrishnaiResearch_OpenSource/kcobra-code-svn/c-src/kingcobra_main_kernelspace.mod.o):
