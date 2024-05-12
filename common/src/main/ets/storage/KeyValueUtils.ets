import { IKeyValue } from './IKeyValue'
import { PreferenceStorage } from './PreferenceStorage'

/**
 * KeyValue工具类
 */
export class KeyValueUtils {
  private kvFactory: IKeyValue = new PreferenceStorage()
  private static instance: KeyValueUtils

  private constructor() {
  }

  public static getInstance(): KeyValueUtils {
    if (!KeyValueUtils.instance) {
      KeyValueUtils.instance = new KeyValueUtils()
    }
    return KeyValueUtils.instance;
  }

  getValueAsync<T>(key: string, defaultValue?: T): Promise<T | null> {
    return this.kvFactory.getValueAsync(key, defaultValue)
  }

  getValue<T>(key: string, defaultValue?: T): T | null {
    return this.kvFactory.getValue(key, defaultValue)
  }

  setValueAsync<T>(key: string, value?: T): Promise<void> {
    return this.kvFactory.setValueAsync(key, value)
  }

  setValue<T>(key: string, value?: T): void {
    this.kvFactory.setValue(key, value)
  }

  getBooleanAsync(key: string, defaultValue?: boolean): Promise<boolean> {
    return this.kvFactory.getBooleanAsync(key, defaultValue)
  }

  getBoolean(key: string, defaultValue?: boolean): boolean {
    return this.kvFactory.getBoolean(key, defaultValue)
  }

  setBooleanAsync(key: string, value?: boolean): Promise<void> {
    return this.kvFactory.setBooleanAsync(key, value)
  }

  setBoolean(key: string, value: boolean): void {
    this.kvFactory.setBoolean(key, value)
  }

  getNumberAsync(key: string, defaultValue?: number): Promise<number> {
    return this.kvFactory.getNumberAsync(key, defaultValue)
  }

  getNumber(key: string, defaultValue?: number): number {
    return this.kvFactory.getNumber(key, defaultValue)
  }

  setNumberAsync(key: string, value?: number): Promise<void> {
    return this.kvFactory.setNumberAsync(key, value)
  }

  setNumber(key: string, value?: number): void {
    this.kvFactory.setNumber(key, value)
  }

  getStringAsync(key: string, defaultValue?: string): Promise<string> {
    return this.kvFactory.getStringAsync(key, defaultValue)
  }

  getString(key: string, defaultValue?: string): string {
    return this.kvFactory.getString(key, defaultValue)
  }

  setStringAsync(key: string, value?: string): Promise<void> {
    return this.kvFactory.setStringAsync(key, value)
  }

  setString(key: string, value?: string): void {
    this.kvFactory.setString(key, value)
  }

  getStringArrayAsync(key: string, defaultValue?: string[]): Promise<string[]> {
    return this.kvFactory.getStringArrayAsync(key, defaultValue)
  }

  getStringArray(key: string, defaultValue?: string[]): string[] {
    return this.kvFactory.getStringArray(key, defaultValue)
  }

  setStringArrayAsync(key: string, value?: string[]): Promise<void> {
    return this.kvFactory.setStringArrayAsync(key, value)
  }

  setStringArray(key: string, value?: string[]): void {
    this.kvFactory.setStringArray(key, value)
  }

  getNumberArrayAsync(key: string, defaultValue?: number[]): Promise<number[]> {
    return this.kvFactory.getNumberArrayAsync(key, defaultValue)
  }

  getNumberArray(key: string, defaultValue?: number[]): number[] {
    return this.kvFactory.getNumberArray(key, defaultValue)
  }

  setNumberArrayAsync(key: string, value?: number[]): Promise<void> {
    return this.kvFactory.setNumberArrayAsync(key, value)
  }

  setNumberArray(key: string, value?: number[]): void {
    this.kvFactory.setNumberArray(key, value)
  }

  getBooleanArrayAsync(key: string, defaultValue?: boolean[]): Promise<boolean[]> {
    return this.kvFactory.getBooleanArrayAsync(key, defaultValue)
  }

  getBooleanArray(key: string, defaultValue?: boolean[]): boolean[] {
    return this.kvFactory.getBooleanArray(key, defaultValue)
  }

  setBooleanArrayAsync(key: string, value?: boolean[]): Promise<void> {
    return this.kvFactory.setBooleanArrayAsync(key, value)
  }

  setBooleanArray(key: string, value?: boolean[]): void {
    this.kvFactory.setBooleanArray(key, value)
  }

  getUint8ArrayAsync(key: string, defaultValue?: Uint8Array): Promise<Uint8Array | null> {
    return this.kvFactory.getUint8ArrayAsync(key, defaultValue)
  }

  getUint8Array(key: string, defaultValue?: Uint8Array): Uint8Array | null {
    return this.kvFactory.getUint8Array(key, defaultValue)
  }

  setUint8ArrayAsync(key: string, value?: Uint8Array): Promise<void> {
    return this.kvFactory.setUint8ArrayAsync(key)
  }

  setUint8Array(key: string, value?: Uint8Array): void {
    this.kvFactory.setUint8Array(key, value)
  }

  hasValueAsync(key: string): Promise<boolean> {
    return this.kvFactory.hasValueAsync(key)
  }

  hasValue(key: string): boolean {
    return this.kvFactory.hasValue(key)
  }

  deleteValueAsync(key: string): Promise<void> {
    return this.kvFactory.deleteValueAsync(key)
  }

  deleteValue(key: string): void {
    return this.kvFactory.deleteValue(key)
  }
}