MEMORY
{
  bootrom0 : org = 0x40000000, len = 0x10000
}

SECTIONS
{
	.text : ALIGN(4)
	{
		*(.text)
	} > bootrom0

	/DISCARD/ : { *(.data .bss) }
} 
