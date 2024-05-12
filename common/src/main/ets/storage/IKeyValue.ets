export interface IKeyValue {
  getValueAsync<T>(key: string, defaultValue?: T): Promise<T | null>

  getValue<T>(key: string, defaultValue?: T): T | null

  setValueAsync<T>(key: string, value: T): Promise<void>

  setValue<T>(key: string, value?: T): void

  getBooleanAsync(key: string, defaultValue?: boolean): Promise<boolean>

  getBoolean(key: string, defaultValue?: boolean): boolean

  setBooleanAsync(key: string, value?: boolean): Promise<void>

  setBoolean(key: string, value: boolean): void

  getNumberAsync(key: string, defaultValue?: number): Promise<number>

  getNumber(key: string, defaultValue?: number): number

  setNumberAsync(key: string, value?: number): Promise<void>

  setNumber(key: string, value?: number): void

  getStringAsync(key: string, defaultValue?: string): Promise<string>

  getString(key: string, defaultValue?: string): string

  setStringAsync(key: string, value?: string): Promise<void>

  setString(key: string, value?: string): void

  getStringArrayAsync(key: string, defaultValue?: string[]): Promise<string[]>

  getStringArray(key: string, defaultValue?: string[]): string[]

  setStringArrayAsync(key: string, value?: string[]): Promise<void>

  setStringArray(key: string, value?: string[]): void

  getNumberArrayAsync(key: string, defaultValue?: number[]): Promise<number[]>

  getNumberArray(key: string, defaultValue?: number[]): number[]

  setNumberArrayAsync(key: string, value?: number[]): Promise<void>

  setNumberArray(key: string, value?: number[]): void

  getBooleanArrayAsync(key: string, defaultValue?: boolean[]): Promise<boolean[]>

  getBooleanArray(key: string, defaultValue?: boolean[]): boolean[]

  setBooleanArrayAsync(key: string, value?: boolean[]): Promise<void>

  setBooleanArray(key: string, value?: boolean[]): void

  getUint8ArrayAsync(key: string, defaultValue?: Uint8Array): Promise<Uint8Array | null>

  getUint8Array(key: string, defaultValue?: Uint8Array): Uint8Array | null

  setUint8ArrayAsync(key: string, value?: Uint8Array): Promise<void>

  setUint8Array(key: string, value?: Uint8Array): void

  hasValueAsync(key: string): Promise<boolean>

  hasValue(key: string): boolean

  deleteValueAsync(key: string): Promise<void>

  deleteValue(key: string): void

}