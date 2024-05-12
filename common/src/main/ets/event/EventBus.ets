import { common } from '@kit.AbilityKit';

/**
 * 系统EventHub
 */
export class EventBus {
  private eventHub: common.EventHub = (getContext(this) as common.UIAbilityContext).eventHub;
  private static instance: EventBus;

  private constructor() {
  }

  public static getInstance(): EventBus {
    if (!EventBus.instance) {
      EventBus.instance = new EventBus();
    }
    return EventBus.instance;
  }

  postEvent(eventKey: string, ...args: Object[]) {
    this.eventHub.emit(eventKey, ...args);
  }

  on(eventKey: string, callback: Function) {
    this.eventHub.on(eventKey, callback)
  }

  off(eventKey: string, callback?: Function) {
    this.eventHub.off(eventKey, callback)
  }
}