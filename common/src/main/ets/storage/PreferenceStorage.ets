import { IKeyValue } from './IKeyValue';
import { preferences } from '@kit.ArkData';
import { CommonConstants } from '../constants/CommonConstants';

const PREFERENCES_NAME: string = 'gtjaqh_futures';

export class PreferenceStorage implements IKeyValue {
  private preferences: preferences.Preferences

  constructor(preferenceName: string = PREFERENCES_NAME) {
    this.preferences = preferences.getPreferencesSync(getContext(), { name: preferenceName })
  }

  getValueAsync<T>(key: string, defaultValue?: T): Promise<T | null> {
    return this.preferences.get(key, CommonConstants.EMPTY).then((res: preferences.ValueType) => {
      let value: T | null = null;
      if (res) {
        value = JSON.parse(res as string) as T;
        if ((value == null || value == undefined) && defaultValue != null) {
          value = defaultValue
        }
      } else {
        if (defaultValue != null) {
          value = defaultValue
        }
      }
      return value;
    })
  }

  getValue<T>(key: string, defaultValue?: T): T | null {
    let res = this.preferences.getSync(key, CommonConstants.EMPTY)
    let value: T | null = null;
    if (res) {
      value = JSON.parse(res as string) as T;
      if ((value == null || value == undefined) && defaultValue != null) {
        value = defaultValue
      }
    } else {
      if (defaultValue != null) {
        value = defaultValue
      }
    }
    return value
  }

  setValueAsync<T>(key: string, value?: T): Promise<void> {
    return this.preferences.put(key, JSON.stringify(value)).then(() => {
      this.saveUserData()
    })
  }

  setValue<T>(key: string, value?: T): void {
    this.preferences.putSync(key, JSON.stringify(value))
    this.saveUserData()
  }

  getBooleanAsync(key: string, defaultValue?: boolean): Promise<boolean> {
    return this.preferences.get(key, defaultValue ? defaultValue : false).then((res: preferences.ValueType) => {
      let value: boolean = false
      if (res != null || res != undefined) {
        value = res as boolean
      } else {
        value = defaultValue ? defaultValue : false
      }
      return value
    })
  }

  getBoolean(key: string, defaultValue?: boolean): boolean {
    let res = this.preferences.getSync(key, defaultValue ? defaultValue : false)
    let value: boolean = false
    if (res) {
      value = res as boolean
    } else {
      value = defaultValue ? defaultValue : false
    }
    return value
  }

  setBooleanAsync(key: string, value?: boolean): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setBoolean(key: string, value: boolean): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  getNumberAsync(key: string, defaultValue?: number): Promise<number> {
    return this.preferences.get(key, defaultValue ? defaultValue : -1).then((res: preferences.ValueType) => {
      let value: number = -1
      if (res) {
        value = res as number
      } else {
        value = defaultValue ? defaultValue : -1
      }
      return value
    })
  }

  getNumber(key: string, defaultValue?: number): number {
    let res = this.preferences.getSync(key, defaultValue ? defaultValue : -1)
    let value: number = -1
    if (res) {
      value = res as number
    } else {
      value = defaultValue ? defaultValue : -1
    }
    return value
  }

  setNumberAsync(key: string, value?: number): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setNumber(key: string, value?: number): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  getStringAsync(key: string, defaultValue?: string): Promise<string> {
    return this.preferences.get(key, defaultValue ? defaultValue : CommonConstants.EMPTY)
      .then((res: preferences.ValueType) => {
        let value: string = CommonConstants.EMPTY
        if (res) {
          value = res as string
        } else {
          value = defaultValue ? defaultValue : CommonConstants.EMPTY
        }
        return value
      })
  }

  getString(key: string, defaultValue?: string): string {
    let res = this.preferences.getSync(key, defaultValue ? defaultValue : CommonConstants.EMPTY)
    let value: string = CommonConstants.EMPTY
    if (res) {
      value = res as string
    } else {
      value = defaultValue ? defaultValue : CommonConstants.EMPTY
    }
    return value
  }

  setStringAsync(key: string, value: string): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setString(key: string, value: string): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  getStringArrayAsync(key: string, defaultValue?: string[]): Promise<string[]> {
    return this.preferences.get(key, defaultValue ? defaultValue : [])
      .then((res: preferences.ValueType) => {
        let value: string[] = []
        if (res) {
          value = res as string[]
        } else {
          value = defaultValue ? defaultValue : []
        }
        return value
      })
  }

  getStringArray(key: string, defaultValue?: string[]): string[] {
    let res = this.preferences.getSync(key, defaultValue ? defaultValue : CommonConstants.EMPTY)
    let value: string[] = []
    if (res) {
      value = res as string[]
    } else {
      value = defaultValue ? defaultValue : []
    }
    return value
  }

  setStringArrayAsync(key: string, value?: string[]): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setStringArray(key: string, value?: string[]): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  getNumberArrayAsync(key: string, defaultValue?: number[]): Promise<number[]> {
    return this.preferences.get(key, defaultValue ? defaultValue : [])
      .then((res: preferences.ValueType) => {
        let value: number[] = []
        if (res) {
          value = res as number[]
        } else {
          value = defaultValue ? defaultValue : []
        }
        return value
      })
  }

  getNumberArray(key: string, defaultValue?: number[]): number[] {
    let res = this.preferences.getSync(key, defaultValue ? defaultValue : CommonConstants.EMPTY)
    let value: number[] = []
    if (res) {
      value = res as number[]
    } else {
      value = defaultValue ? defaultValue : []
    }
    return value
  }

  setNumberArrayAsync(key: string, value?: number[]): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setNumberArray(key: string, value?: number[]): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  getBooleanArrayAsync(key: string, defaultValue?: boolean[]): Promise<boolean[]> {
    return this.preferences.get(key, defaultValue ? defaultValue : [])
      .then((res: preferences.ValueType) => {
        let value: boolean[] = []
        if (res) {
          value = res as boolean[]
        } else {
          value = defaultValue ? defaultValue : []
        }
        return value
      })
  }

  getBooleanArray(key: string, defaultValue?: boolean[]): boolean[] {
    let res = this.preferences.getSync(key, defaultValue ? defaultValue : CommonConstants.EMPTY)
    let value: boolean[] = []
    if (res) {
      value = res as boolean[]
    } else {
      value = defaultValue ? defaultValue : []
    }
    return value
  }

  setBooleanArrayAsync(key: string, value?: boolean[]): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setBooleanArray(key: string, value?: boolean[]): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  getUint8ArrayAsync(key: string, defaultValue?: Uint8Array): Promise<Uint8Array | null> {
    return this.preferences.get(key, defaultValue)
      .then((res: preferences.ValueType) => {
        let value: Uint8Array | null = null
        if (res) {
          value = res as Uint8Array
        } else {
          value = defaultValue ? defaultValue : null
        }
        return value
      })
  }

  getUint8Array(key: string, defaultValue?: Uint8Array): Uint8Array | null {
    let res = this.preferences.getSync(key, defaultValue)
    let value: Uint8Array | null = null
    if (res) {
      value = res as Uint8Array
    } else {
      value = defaultValue ? defaultValue : null
    }
    return value
  }

  setUint8ArrayAsync(key: string, value?: Uint8Array): Promise<void> {
    return this.preferences.put(key, value).then(() => {
      this.saveUserData()
    })
  }

  setUint8Array(key: string, value?: Uint8Array): void {
    this.preferences.putSync(key, value)
    this.saveUserData()
  }

  hasValueAsync(key: string): Promise<boolean> {
    return this.preferences.has(key)
  }

  hasValue(key: string): boolean {
    return this.preferences.hasSync(key)
  }

  deleteValueAsync(key: string): Promise<void> {
    return this.preferences.delete(key).then(() => {
      this.saveUserData()
    })
  }

  deleteValue(key: string): void {
    this.preferences.deleteSync(key)
    this.saveUserData()
  }

  saveUserData() {
    this.preferences.flush();
  }
}