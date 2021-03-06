#include <avr/io.h>
#include <util/delay.h>
#include <avr/eeprom.h>

#include "lcd-routines.h"

#ifdef _DEBUG_UART
#include "uart.h"
#endif

void lcd_data(unsigned char temp1) {
#ifdef _DEBUG_UART
  uart_putc(temp1);
#endif
/*  LCD_PORT |= (1<<LCD_RS);*/
/*  lcd_send(temp1);*/
}

void lcd_command(unsigned char temp1) {
/*  LCD_PORT &= ~(1<<LCD_RS);*/
/*  lcd_send(temp1);*/
}

void lcd_send(unsigned char data) {

#ifdef LCD_SLOW_SEND
  _delay_us(500);
#endif

/*  LCD_PORT = (LCD_PORT & 0xF0) | ((data >> 4) & 0x0F);*/
/*  _delay_us(5);*/
/**/
/*  lcd_enable();*/
/**/
/*  LCD_PORT = (LCD_PORT & 0xF0) | (data & 0x0F);*/
/*  _delay_us(5);*/
/**/
/*  lcd_enable();*/
/*  _delay_us(60);*/
/**/
/*  LCD_PORT &= 0xF0;*/
}

void lcd_enable(void) {
/*  LCD_PORT |= (1<<LCD_EN1);*/
/*  _delay_us(10);*/
/*  LCD_PORT &= ~(1<<LCD_EN1);*/
}

void lcd_init(void) {
/*  LCD_DDR = LCD_DDR | 0x0F | (1<<LCD_RS) | (1<<LCD_EN1);*/
/**/
/*  _delay_ms(30);*/
/*  LCD_PORT = (LCD_PORT & 0xF0 & ~(1<<LCD_RS)) | 0x03;*/
/**/
/*  lcd_enable();*/
/*  _delay_ms(5);*/
/**/
/*  lcd_enable();*/
/*  _delay_ms(1);*/
/**/
/*  lcd_enable();*/
/*  _delay_ms(1);*/
/**/
/*  LCD_PORT = (LCD_PORT & 0xF0 & ~(1<<LCD_RS)) | 0x02;*/
/*  _delay_ms(1);*/
/**/
/*  lcd_enable();*/
/*  _delay_ms(1);*/
/**/
/*  lcd_command(CMD_SetIFOptions | 0x08);*/
/**/
/*  lcd_command(CMD_SetDisplayAndCursor | 0x04);*/
/**/
/*  lcd_command(CMD_SetEntryMode | 0x02);	*/
/*  lcd_clear();*/
}

void lcd_clear(void) {
/*  lcd_command(CLEAR_DISPLAY);*/
/*  _delay_ms(5);*/
}

void lcd_string(char *data) {
#ifdef _DEBUG_UART
  uart_puts(data);
  uart_puts("\n");
#endif
/*  while(*data) {*/
/*    lcd_data(*data);*/
/*    data++;*/
/*  }*/
}

void lcd_eep_string(const unsigned char *data) {
  lcd_string((char *)data);
}
