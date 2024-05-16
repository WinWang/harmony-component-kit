import { IKeyValue } from './IKeyValue'
import { PreferenceStorage, PREFERENCES_NAME } from './PreferenceStorage'
import { common } from '@kit.AbilityKit';

/**
 * KeyValue工具类
 */
export class KeyValueUtils {
  private static kvFactory: IKeyValue

  static init(context: common.UIAbilityContext, preferenceName: string = PREFERENCES_NAME) {
    KeyValueUtils.kvFactory = new PreferenceStorage(preferenceName, context);
  }

  static getValueAsync<T>(key: string, defaultValue?: T): Promise<T | null> {
    return KeyValueUtils.kvFactory.getValueAsync(key, defaultValue)
  }

  static getValue<T>(key: string, defaultValue?: T): T | null {
    return KeyValueUtils.kvFactory.getValue(key, defaultValue)
  }

  static setValueAsync<T>(key: string, value?: T): Promise<void> {
    return KeyValueUtils.kvFactory.setValueAsync(key, value)
  }

  static setValue<T>(key: string, value?: T): void {
    KeyValueUtils.kvFactory.setValue(key, value)
  }

  static getBooleanAsync(key: string, defaultValue?: boolean): Promise<boolean> {
    return KeyValueUtils.kvFactory.getBooleanAsync(key, defaultValue)
  }

  static getBoolean(key: string, defaultValue?: boolean): boolean {
    return KeyValueUtils.kvFactory.getBoolean(key, defaultValue)
  }

  static setBooleanAsync(key: string, value?: boolean): Promise<void> {
    return KeyValueUtils.kvFactory.setBooleanAsync(key, value)
  }

  static setBoolean(key: string, value: boolean): void {
    KeyValueUtils.kvFactory.setBoolean(key, value)
  }

  static getNumberAsync(key: string, defaultValue?: number): Promise<number> {
    return KeyValueUtils.kvFactory.getNumberAsync(key, defaultValue)
  }

  static getNumber(key: string, defaultValue?: number): number {
    return KeyValueUtils.kvFactory.getNumber(key, defaultValue)
  }

  static setNumberAsync(key: string, value?: number): Promise<void> {
    return KeyValueUtils.kvFactory.setNumberAsync(key, value)
  }

  static setNumber(key: string, value?: number): void {
    KeyValueUtils.kvFactory.setNumber(key, value)
  }

  static getStringAsync(key: string, defaultValue?: string): Promise<string> {
    return KeyValueUtils.kvFactory.getStringAsync(key, defaultValue)
  }

  static getString(key: string, defaultValue?: string): string {
    return KeyValueUtils.kvFactory.getString(key, defaultValue)
  }

  static setStringAsync(key: string, value?: string): Promise<void> {
    return KeyValueUtils.kvFactory.setStringAsync(key, value)
  }

  static setString(key: string, value?: string): void {
    KeyValueUtils.kvFactory.setString(key, value)
  }

  static getStringArrayAsync(key: string, defaultValue?: string[]): Promise<string[]> {
    return KeyValueUtils.kvFactory.getStringArrayAsync(key, defaultValue)
  }

  static getStringArray(key: string, defaultValue?: string[]): string[] {
    return KeyValueUtils.kvFactory.getStringArray(key, defaultValue)
  }

  static setStringArrayAsync(key: string, value?: string[]): Promise<void> {
    return KeyValueUtils.kvFactory.setStringArrayAsync(key, value)
  }

  static setStringArray(key: string, value?: string[]): void {
    KeyValueUtils.kvFactory.setStringArray(key, value)
  }

  static getNumberArrayAsync(key: string, defaultValue?: number[]): Promise<number[]> {
    return KeyValueUtils.kvFactory.getNumberArrayAsync(key, defaultValue)
  }

  static getNumberArray(key: string, defaultValue?: number[]): number[] {
    return KeyValueUtils.kvFactory.getNumberArray(key, defaultValue)
  }

  static setNumberArrayAsync(key: string, value?: number[]): Promise<void> {
    return KeyValueUtils.kvFactory.setNumberArrayAsync(key, value)
  }

  static setNumberArray(key: string, value?: number[]): void {
    KeyValueUtils.kvFactory.setNumberArray(key, value)
  }

  static getBooleanArrayAsync(key: string, defaultValue?: boolean[]): Promise<boolean[]> {
    return KeyValueUtils.kvFactory.getBooleanArrayAsync(key, defaultValue)
  }

  static getBooleanArray(key: string, defaultValue?: boolean[]): boolean[] {
    return KeyValueUtils.kvFactory.getBooleanArray(key, defaultValue)
  }

  static setBooleanArrayAsync(key: string, value?: boolean[]): Promise<void> {
    return KeyValueUtils.kvFactory.setBooleanArrayAsync(key, value)
  }

  static setBooleanArray(key: string, value?: boolean[]): void {
    KeyValueUtils.kvFactory.setBooleanArray(key, value)
  }

  static getUint8ArrayAsync(key: string, defaultValue?: Uint8Array): Promise<Uint8Array | null> {
    return KeyValueUtils.kvFactory.getUint8ArrayAsync(key, defaultValue)
  }

  static getUint8Array(key: string, defaultValue?: Uint8Array): Uint8Array | null {
    return KeyValueUtils.kvFactory.getUint8Array(key, defaultValue)
  }

  static setUint8ArrayAsync(key: string, value?: Uint8Array): Promise<void> {
    return KeyValueUtils.kvFactory.setUint8ArrayAsync(key)
  }

  static setUint8Array(key: string, value?: Uint8Array): void {
    KeyValueUtils.kvFactory.setUint8Array(key, value)
  }

  static hasValueAsync(key: string): Promise<boolean> {
    return KeyValueUtils.kvFactory.hasValueAsync(key)
  }

  static hasValue(key: string): boolean {
    return KeyValueUtils.kvFactory.hasValue(key)
  }

  static deleteValueAsync(key: string): Promise<void> {
    return KeyValueUtils.kvFactory.deleteValueAsync(key)
  }

  static deleteValue(key: string): void {
    return KeyValueUtils.kvFactory.deleteValue(key)
  }
}